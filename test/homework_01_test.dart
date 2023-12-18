import 'dart:convert';

import 'package:dart_exam/23_12_18/homework_01.dart';
import 'package:test/test.dart';

// 연습문제 1
void main() {
  
  test('bank json test', () {
    expect(Bank.fromJson(jsonDecode(json)).name, '홍길동');
    expect(Bank.fromJson(jsonDecode(json)).address, '서울시 어쩌구 저쩌구');
    expect(Bank.fromJson(jsonDecode(json)).phone, '010-1111-2222');
  });
}


String json = '''
{
 "name": "홍길동",
 "address": "서울시 어쩌구 저쩌구",
 "phone": "010-1111-2222"
}
''';
