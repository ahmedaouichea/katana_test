import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:katana_design/models/users.dart';
import 'dart:io';

class ScreenController {
  static Future<List<Users>> getIPAddress() async {
    Map<String, String> headers = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Charset': 'utf-8'
    };
    // ignore: deprecated_member_use
    var users = List<Users>.empty();

    final url = Uri.parse(
        'https://run.mocky.io/v3/27b132ac-4511-4e3b-a24d-c267315b96c4');
    final response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      /*var users = json.decode(response.body);
      print("heree   " + users.toString());*/
      var users = UsersFromJson(response.body);
    }
    return users;
  }
}
