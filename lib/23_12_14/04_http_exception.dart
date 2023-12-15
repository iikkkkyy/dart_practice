// 연습문제 6 에러 처리
// 연습 3에서 url 이 잘못된 경우 대체 데이터를 사용하도록 예외처리를 구현하시오

import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

void main() async {
  final stopWatch = Stopwatch()..start();
  print('다운로드 시작');
  final imageBytes = await downloadImage('https://alimipro.com/favi111con.ico');
  print('다운로드 끝');
  final imageFile = await saveFile(imageBytes, 'favicon.ico');
  print('소요시간 : ${(stopWatch.elapsed.toString())}');
  print('용량 : ${imageBytes.lengthInBytes}bytes');
}

Future<Uint8List> downloadImage(String url) async {
  try {
    // final http.Client client = http.Client();
    // final http.Response response = await client.head(Uri.parse(url));
    // print(response.isRedirect);

    final response = await http.get(Uri.parse(url));
    print(response.isRedirect);
    print(response.headers);
    if (response.statusCode != 200 || response.isRedirect) {
      print('statusCode : ${response.statusCode}');
      throw Exception('statusCode Error');
    }

    return response.bodyBytes;
  } catch (e) {
    print('Error : 잘못된 url 혹은 잘못된 응답값 입니다\n$e');
    print('$url => https://alimipro.com/favicon.ico');
    final replacedResponse =
        await http.get(Uri.parse('https://alimipro.com/favicon.ico'));
    return replacedResponse.bodyBytes;
  }
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  final originalFile = File(fileName);
  originalFile.writeAsBytes(bytes);
  return originalFile;
}
