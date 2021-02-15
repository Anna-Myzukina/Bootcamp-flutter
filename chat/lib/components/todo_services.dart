import 'package:http/http.dart' as http;
import 'package:chat/components/todo_data.dart';

class TodoServices {
  static const String url = 'https://jsonplaceholder.typicode.com/todos/';

  static Future<List<Todo>> getTodos() async {
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        final List<Todo> todos = todoFromJson(response.body);
        return todos;
      } else {
        return List<Todo>();
      }
    } catch (e) {
      return List<Todo>();
    }
  }
}