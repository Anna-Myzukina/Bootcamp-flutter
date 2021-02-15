import 'package:http/http.dart' as http;
import 'package:chat/components/user_data.dart';

class UserServices {
  static const String url = 'https://jsonplaceholder.typicode.com/users/';

  static Future<List<User>> getUsers() async {
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        final List<User> users = userFromJson(response.body);
        return users;
      } else {
        return List<User>();
      }
    } catch (e) {
      return List<User>();
    }
  }
}
