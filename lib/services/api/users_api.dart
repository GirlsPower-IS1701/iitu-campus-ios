import 'dart:convert';
import 'package:campus/constants/environmets.dart';
import 'package:campus/datamodels/user/system_user.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class UsersApi {
  final String _apiEndpoint = '$baseUrl/api/users';

  Future<List<SystemUser>> getUsers({
    @required String token,
  }) async {
    final response = await http.get("$_apiEndpoint", headers: {
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      final body = Utf8Decoder().convert(response.bodyBytes);
      final users = (json.decode(body) as List)
          .map((user) => SystemUser.fromJson(user))
          .toList();
      return users;
    }
    throw 'Could not fetch the users at this time';
  }

  Future<SystemUser> getCurrentUser({
    @required String token,
  }) async {
    final url = '$_apiEndpoint/current';
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      final body = Utf8Decoder().convert(response.bodyBytes);
      return SystemUser.fromJson(json.decode(body));
    }

    throw 'Could not fetch current User at this time';
  }

  Future createUser({
    @required String token,
    @required SystemUser user,
  }) async {
    final response = await http.post(
      _apiEndpoint,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: json.encode(user),
    );

    if (response.statusCode == 201) {
      return;
    }

    if (response.statusCode >= 400 && response.statusCode <= 500) {
      final body = Utf8Decoder().convert(response.bodyBytes);
      final error = json.decode(body) as Map<String, dynamic>;
      throw error['message'] ?? 'Could not create user at this time';
    }

    throw 'Could not create user at this time';
  }

  Future updateUser({
    @required String token,
    @required SystemUser user,
  }) async {
    var response = await http.put(
      "$_apiEndpoint/${user.id}",
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: json.encode(user),
    );

    if (response.statusCode == 200) {
      return;
    }

    if (response.statusCode >= 400 && response.statusCode <= 500) {
      final body = Utf8Decoder().convert(response.bodyBytes);
      final error = json.decode(body) as Map<String, dynamic>;
      throw error['message'] ?? 'Could not update user at this time';
    }

    throw 'Could not update user at this time';
  }

  
  Future removeUser({
    @required String token,
    @required String usersId,
  }) async {
    final response = await http.delete('$_apiEndpoint/$usersId', headers: {
      'Authorization': 'Bearer $token',
    });

    if (response.statusCode == 200) {
      return;
    }

    if (response.statusCode >= 400 && response.statusCode <= 500) {
      final body = Utf8Decoder().convert(response.bodyBytes);
      final error = json.decode(body) as Map<String, dynamic>;
      throw error['message'] ?? 'Could not remove user at this time';
    }

    throw 'Could not remove user at this time';
  }
}
