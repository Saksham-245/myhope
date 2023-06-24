import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> login(String email, String password) async {
  try {
    var response = await http.post(
      Uri.parse('https://my-hope-backend.onrender.com/user/login'),
      body: {"email": email, "password": password},
    );
    return response.body;
  } catch (e) {
    return 'Failed to Login';
  }
}

void signup(String firstName) {
  print(firstName);
}

Future<String> signUp(
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
    final decodedData = json.decode(response.body);
    return decodedData;
  } catch (e) {
    return 'Failed to Login';
  }
}
