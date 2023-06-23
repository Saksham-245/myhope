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
