import 'dart:convert';

class UserModel {
  final String name;
  final String email;
  final String? photoURL;
  final String? password;

  const UserModel(
      {required this.name, required this.email, this.photoURL, this.password});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        name: map['name'],
        email: map['email'],
        photoURL: map['photoURL'],
        password: map['password']);
  }

  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));

  Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "photoURL": photoURL,
        "password": password,
      };

  String toJson() => jsonEncode(toMap());
}
