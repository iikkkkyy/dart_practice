import 'package:dart_exam/23_12_15/movie/mapper/movie_mapper.dart';
import 'package:dart_exam/23_12_15/movie/source/movie_api.dart';

import 'model/movie.dart';

void main() async {
  final api = MovieApi();

  final dto = await api.getMovieInfoResult();

  List<Result> results = dto.results
      ?.map((e) => e.toResult())
      .toList() ?? [];

  print(results.toString());
}
