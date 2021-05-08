import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

part 'system_user.g.dart';

@JsonSerializable()
class SystemUser {
  final String id;
  final String name;
  final String login;
  final String password;


  SystemUser({
    this.id,
    this.name,
    this.login,
    this.password
  });

  factory SystemUser.fromJson(Map<String, dynamic> json) => _$SystemUserFromJson(json);
  Map<String, dynamic> toJson() => _$SystemUserToJson(this);

  SystemUser copyWith({
    String id,
    String name,
    String login,
    String password,
  }) {
    return SystemUser(
      id: id ?? this.id,
      name: name ?? this.name,
      login: login ?? this.login,
      password: password ?? this.password,
    );
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, login: $login, password: $password';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SystemUser &&
        o.id == id &&
        o.name == name &&
        o.login == login &&
        o.password == password;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        login.hashCode ^
        password.hashCode;
  }
}

extension UserExtension on SystemUser {
  String get avatarUrl {
    final loginHash = md5.convert(utf8.encode(login)).toString();
    return 'https://s.gravatar.com/avatar/$loginHash?s=120';
  }
}
