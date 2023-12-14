import 'dart:convert';
import 'package:http/http.dart' as http;

import 'movieList.dart';
import 'moviedetail.dart';

void main() async {

  // 연습문제 1 test
  // final movie = await movieList();
  // print(jsonEncode(movie.toJson()));

  // 연습문제 2 test
  final movieId = await getMovieId(6);
  print(jsonEncode(movieId.toJson()));
}

// 연습문제 1
// 영화정보를 가져와서 모델에 담고 json 형태로 출력하기
Future<MovieList> movieList() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  return (MovieList.fromJson(jsonDecode(response.body)));
}

Future<MovieDetails> getMovieId(int movieId) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/${movieId}?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  return (MovieDetails.fromJson(jsonDecode(response.body)));
}
