import 'dart:convert';
import 'package:http/http.dart' as http;

login(String email, String password) async {
  Map data = {
    "phone": email,
    "password": password,
  };
  var body = json.encode(data);
  await http.post(Uri.parse("https://food-del-app.herokuapp.com/login"),
      body: body,
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      }).then((response) {
    print(response.statusCode);
    print(response.body);
  });
}
