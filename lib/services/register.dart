// https://food-del-app.herokuapp.com/reg

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<bool> register(fname, email, phone, password, confirmPass) async {
  Map data = {
    'fullname': fname,
    'email': email,
    "phone": email,
    "password": password,
    "confirmpassword": confirmPass,
  };
  var body = json.encode(data);
  var response = await http.post(
      Uri.parse("https://food-del-app.herokuapp.com/reg"),
      body: body,
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      });
  var jsonData = json.decode(response.body);
  print(jsonData);
  if (jsonData['Message'] == 'Signup was successful!') {
    print("Registered");
    return true;
  } else {
    print(jsonData['Message']);
    return false;
  }
}
