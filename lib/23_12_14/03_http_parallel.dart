// 연습문제 5 - 병렬처리
// 연습문제 3, 4를 활용하여
// 임의의 3개의 이미지를 순차적으로 다운로드 받는 시간과, 병렬로 동시에 다운로드 받는 시간을 비교해 보시오

import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

void main() async {
  // 소요시간 : 0:00:00.184437
  final stopWatch = Stopwatch()..start();
  final imageBytes = await downloadImage('https://alimipro.com/favicon.ico');
  await saveFile(imageBytes, 'favicon1.ico');
  final imageBytes2 = await downloadImage('https://alimipro.com/favicon.ico');
  await saveFile(imageBytes, 'favicon2.ico');
  final imageBytes3 = await downloadImage('https://alimipro.com/favicon.ico');
  await saveFile(imageBytes, 'favicon3.ico');
  print('소요시간 : ${(stopWatch.elapsed.toString())}');

  // 소요시간 : 0:00:00.010798
  // final stopWatch = Stopwatch()..start();
  // downloadImage('https://alimipro.com/favicon.ico')
  //     .then((imageBytes) => saveFile(imageBytes, 'favicon1.ico'));
  // downloadImage('https://alimipro.com/favicon.ico')
  //     .then((imageBytes) => saveFile(imageBytes, 'favicon2.ico'));
  // downloadImage('https://alimipro.com/favicon.ico')
  //     .then((imageBytes) => saveFile(imageBytes, 'favicon3.ico'));
  // print('소요시간 : ${(stopWatch.elapsed.toString())}');
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
