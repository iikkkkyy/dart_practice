// 연습문제 2. API 호출 및 데이터 처리
// 다음과 같은 영화 정보 Json을 반환하는 함수가 있다
// 위 함수를 사용하여 director 가 누군지 출력해 보시오

import 'dart:convert';

Future<void> main() async {
  print(await getDirectorInfo());
}

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };
  return jsonEncode(mockData);
}

Future<String> getDirectorInfo() async {
  final director = await getMovieInfo();
  final decodeMovie = jsonDecode(director);
  return decodeMovie['director'];
}
