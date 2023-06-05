import 'dart:convert';

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.message = "",
    this.users = const [],
  }) {}

  String message = "";
  List<User> users = <User>[];

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        message: json["message"],
        users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
      };
}

class User {
  String id;
  String name;
  String phone;
  String note;
  User({
    required this.id,
    required this.name,
    required this.phone,
    required this.note,
  });

  User copyWith({
    String? id,
    String? name,
    String? phone,
    String? note,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      note: note ?? this.note,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'note': note,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      phone: map['phone'] ?? '',
      note: map['note'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
