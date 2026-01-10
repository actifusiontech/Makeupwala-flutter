import 'package:flutter/material.dart';
import '../../data/repositories/studio_repository.dart';
import '../../data/models/studio_model.dart';
import 'package:provider/provider.dart';

class StudioTeamScreen extends StatefulWidget {
  final StudioModel studio;
  // Note: Ideally studio ID is retrieved from managed context,
  // but for now we pass the studio object assuming the user navigated from "My Studio".

  const StudioTeamScreen({Key? key, required this.studio}) : super(key: key);

  @override
  State<StudioTeamScreen> createState() => _StudioTeamScreenState();
}

class _StudioTeamScreenState extends State<StudioTeamScreen> {
  late Future<List<StudioTeamMember>> _teamFuture;

  @override
  void initState() {
    super.initState();
    _refreshTeam();
  }

  void _refreshTeam() {
    setState(() {
      _teamFuture = Provider.of<StudioRepository>(context, listen: false).getTeamMembers(widget.studio.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Team Management'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddMemberDialog,
        backgroundColor: Colors.purple,
        child: const Icon(Icons.add),
      ),
      body: FutureBuilder<List<StudioTeamMember>>(
        future: _teamFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          final members = snapshot.data ?? [];
          
          if (members.isEmpty) {
             return const Center(child: Text('No team members found. Add one!'));
          }

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: members.length,
            separatorBuilder: (c, i) => const Divider(),
            itemBuilder: (context, index) {
              final member = members[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple.shade100,
                  child: Text(member.name.isNotEmpty ? member.name[0].toUpperCase() : '?'),
                ),
                title: Text(member.email), // Showing email as main identifier for now
                subtitle: Text('Role: ${member.role}'),
                trailing: member.isActive 
                  ? const Icon(Icons.check_circle, color: Colors.green)
                  : const Icon(Icons.cancel, color: Colors.red),
              );
            },
          );
        },
      ),
    );
  }

  void _showAddMemberDialog() {
    final emailController = TextEditingController();
    String role = 'STAFF';
    bool isLoading = false;

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: const Text('Add Team Member'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email Address'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: role,
                items: const [
                  DropdownMenuItem(value: 'STAFF', child: Text('Staff')),
                  DropdownMenuItem(value: 'MANAGER', child: Text('Manager')),
                ],
                onChanged: (val) => setState(() => role = val!),
                decoration: const InputDecoration(labelText: 'Role'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: isLoading ? null : () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: isLoading ? null : () async {
                 if (emailController.text.isEmpty) return;
                 
                 setState(() => isLoading = true);
                 try {
                   final repo = Provider.of<StudioRepository>(context, listen: false);
                   await repo.addTeamMember(widget.studio.id, emailController.text, role);
                   if (context.mounted) {
                     Navigator.pop(context); // Close dialog
                     _refreshTeam(); // Reload list
                     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Member added!')));
                   }
                 } catch (e) {
                   if (context.mounted) {
                     setState(() => isLoading = false);
                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed: $e')));
                   }
                 }
              },
              child: isLoading 
                ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)) 
                : const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
