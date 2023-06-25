import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> login(String email, String password) async {
  try {
    var response = await http.post(
      Uri.parse('https://my-hope-backend.onrender.com/user/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{"email": email, "password": password}),
    );

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return {"data": data, "statusCode": response.statusCode};
    } else {
      // handle non-200 status codes
      return {
        "data": 'Server responded with ${response.statusCode} status code.',
        "statusCode": response.statusCode
      };
    }
  } on SocketException {
    // handle network errors
    return {
      "data": 'Network error. Please check your internet connection.',
      "statusCode": 500
    };
  } on TimeoutException {
    // handle timeouts
    return {
      "data": 'The request timed out. Please try again later.',
      "statusCode": 500
    };
  } catch (e) {
    // handle other errors
    return {"data": 'Something went wrong: $e', "statusCode": 500};
  }
}

Future<Map<String, dynamic>> signUp(
  String firstName,
  String middleName,
  String lastName,
  String bio,
  String occupation,
  String email,
  String password,
  String dob,
  String phoneNumber,
  String hobbies,
  String profile,
  String country,
  String gender,
) async {
  try {
    var response = await http.post(
      Uri.parse('https://my-hope-backend.onrender.com/user/new'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'name': {
          "firstName": firstName,
          "middleName": middleName,
          "lastName": lastName,
        },
        'bio': bio,
        'occupation': occupation,
        'email': email,
        'password': password,
        'phoneNumber': phoneNumber,
        'hobbies': [],
        'profile': profile,
        'country': country,
        'gender': gender,
      }),
    );

    var data = json.decode(response.body);
    if (response.statusCode == 200) {
      return {"data": data, "statusCode": response.statusCode};
    } else {
      return {"data": data, "statusCode": response.statusCode};
    }
  } on SocketException {
    return {
      "data": 'Network error. Please check your internet connection.',
      "statusCode": 500
    };
  } on TimeoutException {
    return {
      "data": 'The request timed out. Please try again later.',
      "statusCode": 500
    };
  } catch (e) {
    return {"data": 'Password is shorter', "statusCode": 500};
  }
}
