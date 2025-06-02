import 'package:assignment_03/utilities/users_service.dart';
import 'package:flutter/material.dart';

class UserForm extends StatefulWidget {
  final Function onSaved;
  final User? user;

  const UserForm({super.key, required this.onSaved, this.user});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();
  late String name;
  late String email;

  @override
  void initState() {
    super.initState();
    name = widget.user?.name ?? '';
    email = widget.user?.email ?? '';
  }

Future<void> _submit() async {
  if (_formKey.currentState!.validate()) {
    _formKey.currentState!.save();
    try {
      if (widget.user == null) {
        final newUser = await UserService.createUser(
          User(id: '', name: name, email: email),
        );
        widget.onSaved(newUser);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('User created')),
        );
      } else {
        final updatedUser = await UserService.updateUser(
          widget.user!.id,
          User(id: widget.user!.id, name: name, email: email),
        );
        widget.onSaved(updatedUser);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('User updated')),
        );
      }
      Navigator.of(context).pop();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }
}

Future<void> _delete() async {
  try {
    await UserService.deleteUser(widget.user!.id);
    widget.onSaved(null);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('User deleted')),
    );
    Navigator.of(context).pop();
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error deleting user: $e')),
    );
  }
}


  @override
  Widget build(BuildContext context) {
    final isEditing = widget.user != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? 'Edit User' : 'Add User'),
        actions: isEditing
            ? [
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: _delete,
                )
              ]
            : [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: name,
                decoration: const InputDecoration(labelText: 'Name'),
                onSaved: (val) => name = val ?? '',
                validator: (val) =>
                    val == null || val.isEmpty ? 'Required' : null,
              ),
              TextFormField(
                initialValue: email,
                decoration: const InputDecoration(labelText: 'Email'),
                onSaved: (val) => email = val ?? '',
                validator: (val) =>
                    val == null || val.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submit,
                child: Text(isEditing ? 'Update' : 'Create'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
