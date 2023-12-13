// 연습문제 1. 파일처리
// sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고,
// 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
// (async - await 사용할 것)

import 'dart:io';

void main() {
  fileEdit('samㅇple.csv', 'sample_copy.csv');
}

Future<void> fileEdit(String src, String dst) async {
  final word = await readFile(src).catchError((err) => print('read File error'));
  if (word.contains('한석봉')) {
    await makeFile(dst, word.replaceAll('한석봉', '김석봉'));
  }
}

Future<String> readFile(String src) async {
  final originalFile = File(src);
  final word = await originalFile.readAsString();
  return word;
}

Future<void> makeFile(String dst, String word) async {
  final copyFile = File(dst);
  await copyFile.writeAsString(word);
}
