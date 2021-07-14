import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Auth with ChangeNotifier {
  // ignore: unused_field
  String _token; //expires after an hour for firebase
  // ignore: unused_field
  DateTime _expiryDate;
  // ignore: unused_field
  String _userId;

  Future<void> signup(String email, String password) async {
    const url =
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyBQITMNiPbiRVPie3GBctsizRh1HhZ6TeI';
    // ignore: unused_local_variable
    final response = await http.post(
      Uri.parse(url),
      body: json.encode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
  }
}
