import 'package:assignment_03/utilities/users_service.dart';
import 'package:flutter/material.dart';
import 'user_form.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  late Future<List<User>> _futureUsers;

  @override
  void initState() {
    super.initState();
    _futureUsers = UserService.fetchUsers();
  }

  void _refresh() {
    setState(() {
      _futureUsers = UserService.fetchUsers();
    });
  }

  void _openForm({User? user}) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => UserForm(
        user: user,
        onSaved: (_) => _refresh(),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bitcoin App Users")),
      body: FutureBuilder<List<User>>(
        future: _futureUsers,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final users = snapshot.data!;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return ListTile(
                leading: const Icon(Icons.person),
                title: Text(user.name),
                subtitle: Text(user.email),
                onTap: () => _openForm(user: user),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openForm(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
