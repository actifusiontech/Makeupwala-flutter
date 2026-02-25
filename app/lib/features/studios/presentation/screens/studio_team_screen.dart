import 'package:flutter/material.dart';
import '../../data/studio_repository.dart';
import '../../data/models/studio_model.dart';
import 'package:provider/provider.dart';

class StudioTeamScreen extends StatefulWidget {
  final StudioModel studio;
  // Note: Ideally studio ID is retrieved from managed context,
  // but for now we pass the studio object assuming the user navigated from "My Studio".

  const StudioTeamScreen({super.key, required this.studio});

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
                  backgroundColor: Colors.purple,
                  child: Text(member.name.isNotEmpty ? member.name[0].toUpperCase() : '?'),
                ),
                title: Text(member.email), // Showing email as main identifier for now
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Role: ${member.role} | ${member.email}'),
                    if (member.baseSalary > 0 || member.commissionRate > 0)
                      Text(
                        'Salary: ₹${member.baseSalary} | Commission: ${member.commissionRate}%',
                        style: const TextStyle(fontSize: 12, color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                  ],
                ),
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
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final emailController = TextEditingController();
    final specController = TextEditingController();
    final salaryController = TextEditingController(text: '0');
    final commissionController = TextEditingController(text: '20');
    
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
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Full Name'),
              ),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email Address (Optional)'),
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                controller: specController,
                decoration: const InputDecoration(labelText: 'Specialization'),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: salaryController,
                      decoration: const InputDecoration(labelText: 'Fixed Salary'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      controller: commissionController,
                      decoration: const InputDecoration(labelText: 'Commission %'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                initialValue: role,
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
                 if (nameController.text.isEmpty || phoneController.text.isEmpty) {
                   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Name and Phone are required')));
                   return;
                 }
                 
                 setState(() => isLoading = true);
                 try {
                   final repo = Provider.of<StudioRepository>(context, listen: false);
                   await repo.addTeamMember(widget.studio.id, {
                     'full_name': nameController.text,
                     'phone': phoneController.text,
                     'email': emailController.text,
                     'specialization': specController.text,
                     'role': role,
                     'base_salary': double.tryParse(salaryController.text) ?? 0.0,
                     'commission_rate': double.tryParse(commissionController.text) ?? 0.0,
                   });
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
