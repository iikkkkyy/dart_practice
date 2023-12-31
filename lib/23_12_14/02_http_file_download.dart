// 연습문제 3. 사진 다운로드
// 연습문제 4. 다운로드 시간, 용량 표시
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

void main() async {
  final stopWatch = Stopwatch()..start();
  print('다운로드 시작');
  final imageBytes = await downloadImage('https://alimipro.com/favicon.ico');
  print('다운로드 끝');
  final imageFile = await saveFile(imageBytes, 'favicon.ico');
  print('소요시간 : ${(stopWatch.elapsed.toString())}');
  print('용량 : ${imageBytes.lengthInBytes}bytes');
}

// 네트워크 상의 사진 파일을 다운로드 받는 함수를 작성한다.
// Uint8List 는 “고정 길이 unsigned 8byte integer array” 이다. 즉, byteArray 타입이라고 보면 된다. 즉, 메모리다.
Future<Uint8List> downloadImage(String url) async {
  final response = await http.get(Uri.parse(url));
  return response.bodyBytes;
}

// 메모리에 저장된 사진을 파일로 저장한다.
Future<File> saveFile(Uint8List bytes, String fileName) async {
  final originalFile = File(fileName);
  originalFile.writeAsBytes(bytes);
  return originalFile;
}
