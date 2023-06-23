import 'package:http/http.dart' as http;

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

Future<String> signUp(
  String firstName,
  String middileName,
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
        body: {
          'name': {
            "firstName": firstName,
            "middleName": middileName,
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
          'gender': gender
        });
    return response.body;
  } catch (e) {
    return 'Failed to Login';
  }
}
