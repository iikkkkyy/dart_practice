// 연습문제 1
// 영화정보를 가져와서 모델에 담고 json 형태로 출력하기

import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  getMovie();
}

Future<void> getMovie() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  print(response.body);
}
