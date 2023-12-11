// 연습문제 1
// 파일을 복사하는 함수를 작성하시오
// 원본 파일 경로와 복사할 파일 경로는 프로그램 실행시 파라미터로 전달되는 것으로 하고, 버퍼링이나 에러 처리는 하지 않는다.
import 'dart:io';

// 파일 자체의 copy 방식
void copy(String source, String target) {
  final originalFile = File(source);
  originalFile.copy(target);
}

// 읽고 => 읽고 => 쓰고
void copy2(String source, String target) {
  final originalFile = File(source);
  final copyFile = File(target);
  copyFile.writeAsStringSync(originalFile.readAsStringSync());
}

void main() {
  // original File create
  final myFile = File('original.txt');
  myFile.writeAsStringSync('Hello, World!');

  // copy
  copy('original.txt', 'original_copy.txt');

  // copy
  copy2('original.txt', 'original_copy2.txt');
}
