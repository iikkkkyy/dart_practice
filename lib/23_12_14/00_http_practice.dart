import 'package:http/http.dart' as http;

void main() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  print(response.body);
}