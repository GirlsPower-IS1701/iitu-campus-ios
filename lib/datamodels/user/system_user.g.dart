// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemUser _$SystemUserFromJson(Map<String, dynamic> json) {
  return SystemUser(
    id: json['id'] as String,
    name: json['name'] as String,
    login: json['login'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$SystemUserToJson(SystemUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'login': instance.login,
      'password': instance.password,
    };
