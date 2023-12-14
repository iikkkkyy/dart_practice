// 연습문제 7 실전!
// 마스크 정보를 읽어오고 적절한 모델 클래스를 작성하여 List 에 담고 출력하는 프로그램을 작성하시오
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'mask.dart';


void main() async {
  List<Mask> masks = await getMaskInfo();
  for (var e in masks) {
    print('약국 장소 : ${e.name}, ${e.addr}');
    print('잔여 수량 : ${e.remainStat}');
  }
}

Future<List<Mask>> getMaskInfo() async {
  // 요청
  final response =
      await http.get(Uri.parse('http://104.198.248.76:3000/mask'));
  final jsonString = jsonDecode(utf8.decode(response.bodyBytes));
  final jsonList = jsonString['stores'] as List<dynamic>;
  // print(jsonEncode(jsonList));
  return jsonList.map((e) => Mask.fromJson(e)).toList();
}
