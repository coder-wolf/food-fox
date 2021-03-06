import 'dart:convert';
import 'package:http/http.dart' as http;

Future<bool> login(String email, String password) async {
  Map data = {
    "phone": email,
    "password": password,
  };
  var body = json.encode(data);
  var response = await http.post(
      Uri.parse("https://food-del-app.herokuapp.com/login"),
      body: body,
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      });
  var jsonData = json.decode(response.body);
  print(jsonData);
  if (jsonData['Message'] == 'Login successful!') {
    print("SUCCESS");
    return true;
  } else {
    print("FAILED");
    return false;
  }
}
