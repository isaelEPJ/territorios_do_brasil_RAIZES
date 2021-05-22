import 'dart:convert';

class UserModel {
  final int id;
  final String login;
  final String nickName;
  final String email;
  final String avatar;
  final String bio;
  final String location;
  final bool favorite;

  const UserModel({
    required this.id,
    required this.login,
    required this.nickName,
    required this.email,
    required this.avatar,
    required this.bio,
    required this.location,
    this.favorite = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'login': login,
      'nickName': nickName,
      'email': email,
      'avatar': avatar,
      'bio': bio,
      'location': location,
      'favorite': favorite,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      login: map['login'],
      nickName: map['nickName'],
      email: map['email'],
      avatar: map['avatar'],
      bio: map['bio'],
      location: map['location'],
      favorite: map['favorite'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
