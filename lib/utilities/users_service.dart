import 'dart:convert';
import 'package:http/http.dart' as http;

const String apiUrl = 'https://682aa4caab2b5004cb3742ba.mockapi.io/api/crud/users';

class User {
  final String id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}

class UserService {
  static Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final List jsonList = json.decode(response.body);
      return jsonList.map((e) => User.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }

  static Future<User> createUser(User user) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode(user.toJson()),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 201) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to create user');
    }
  }

  static Future<User> updateUser(String id, User user) async {
    final response = await http.put(
      Uri.parse('$apiUrl/$id'),
      body: jsonEncode(user.toJson()),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to update user');
    }
  }

  static Future<void> deleteUser(String id) async {
    final response = await http.delete(Uri.parse('$apiUrl/$id'));
    if (response.statusCode != 200) {
      throw Exception('Failed to delete user');
    }
  }
}
