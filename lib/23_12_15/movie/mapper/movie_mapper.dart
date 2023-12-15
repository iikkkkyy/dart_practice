import 'package:logger/logger.dart';

import '../dto/movie_dto.dart';
import '../model/movie.dart';

extension ResultsToResult on Results {

  Result toResult() {
    return Result(
      originalTitle: originalTitle ?? 'null',
      releaseDate: releaseDate ?? '날짜 없음',
      title: title ?? '제목 없음',
    );
  }
}