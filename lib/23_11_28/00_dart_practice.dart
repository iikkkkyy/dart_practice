void main() {
  // print('Hello, Dart!');

  // 정수형 변수
  int number = 3;

  // 실수형 변수
  double pi = 3.14;

  // 불리언 변수
  bool isDartFun = false;

  // 문자열 변수
  String greeting = 'Hello, Dart!';

  // var 타입 (Dynamaic type)
  var example = 12;



  print(number);
  print(pi);
  print(isDartFun);
  print(greeting);
  print(example);

  var person = Person();
  person.name = 'Alice';
  person.sayHello();

}


class Person {
  late String name;

  void sayHello(){
    print('Hello, my name is $name');
  }
}