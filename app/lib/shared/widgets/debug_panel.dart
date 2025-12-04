import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/network/api_client.dart';

class DebugPanel extends StatefulWidget {
  const DebugPanel({super.key});

  @override
  State<DebugPanel> createState() => _DebugPanelState();
}

class _DebugPanelState extends State<DebugPanel> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      right: 0,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
          HapticFeedback.lightImpact();
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: _isExpanded ? MediaQuery.of(context).size.width * 0.9 : 60,
          height: _isExpanded ? MediaQuery.of(context).size.height * 0.7 : 60,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.9),
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20),
              bottomLeft: const Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(-5, 0),
              ),
            ],
            border: Border.all(
              color: Colors.blue.withOpacity(0.5),
              width: 2,
            ),
          ),
          child: _isExpanded ? _buildExpandedPanel() : _buildCollapsedButton(),
        ),
      ),
    );
  }

  Widget _buildCollapsedButton() {
    return const Center(
      child: Icon(
        Icons.bug_report,
        color: Colors.blue,
        size: 30,
      ),
    );
  }

  Widget _buildExpandedPanel() {
    return Column(
      children: [
        // Header
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.2),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18),
            ),
          ),
          child: Row(
            children: [
              const Icon(Icons.bug_report, color: Colors.blue, size: 24),
              const SizedBox(width: 12),
              const Expanded(
                child: Text(
                  'Debug Console',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.clear_all, color: Colors.orange),
                onPressed: () {
                  setState(() {
                    ApiClient.debugLogs.clear();
                  });
                  HapticFeedback.mediumImpact();
                },
              ),
              IconButton(
                icon: const Icon(Icons.copy, color: Colors.green),
                onPressed: () {
                  Clipboard.setData(
                    ClipboardData(text: ApiClient.debugLogs.join('\n')),
                  );
                  HapticFeedback.lightImpact();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Logs copied to clipboard!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () {
                  setState(() {
                    _isExpanded = false;
                  });
                  HapticFeedback.lightImpact();
                },
              ),
            ],
          ),
        ),
        
        // Logs
        Expanded(
          child: ApiClient.debugLogs.isEmpty
              ? const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.info_outline, color: Colors.grey, size: 48),
                      SizedBox(height: 16),
                      Text(
                        'No logs yet',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'API requests and responses will appear here',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: ApiClient.debugLogs.length,
                  reverse: true,
                  itemBuilder: (context, index) {
                    final log = ApiClient.debugLogs[
                        ApiClient.debugLogs.length - 1 - index];
                    return _buildLogEntry(log);
                  },
                ),
        ),
        
        // Footer
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(18),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.access_time, color: Colors.grey, size: 16),
              const SizedBox(width: 8),
              Text(
                'Showing last ${ApiClient.debugLogs.length} logs',
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLogEntry(String log) {
    Color logColor = Colors.white;
    IconData logIcon = Icons.info;
    
    if (log.contains('❌') || log.contains('ERROR')) {
      logColor = Colors.red;
      logIcon = Icons.error;
    } else if (log.contains('✅') || log.contains('SUCCESS')) {
      logColor = Colors.green;
      logIcon = Icons.check_circle;
    } else if (log.contains('📤') || log.contains('REQUEST')) {
      logColor = Colors.blue;
      logIcon = Icons.upload;
    } else if (log.contains('📥') || log.contains('RESPONSE')) {
      logColor = Colors.cyan;
      logIcon = Icons.download;
    } else if (log.contains('⚠️') || log.contains('WARNING')) {
      logColor = Colors.orange;
      logIcon = Icons.warning;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: logColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: logColor.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(logIcon, color: logColor, size: 16),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              log,
              style: TextStyle(
                color: logColor,
                fontSize: 12,
                fontFamily: 'monospace',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
