void main() {
  // 함수 호출
  printMessage('Hello, Dart!');

  // 함수 호출과 반환값 사용
  int result = addNumbers(3, 5);
  print('3 + 5 = $result');

  // 선택적 매개변수 사용
  showInfo('Alice');
  showInfo('Bob', age: 30);

  // 위치 기반 매개변수 사용
  printInfo('Charlie', 35);
}

// 함수 선언: 반환 값이 없는 함수
void printMessage(String message) {
  print(message);
}

// 함수 선언: 인자 두 개를 받아 더한 결과를 반환하는 함수
int addNumbers(int a, int b) {
  return a + b;
}

// 함수 선언: 선택적 매개변수를 사용하는 함수
void showInfo(String name, {int? age}) {
  print('Name: $name');
  if (age != null) {
    print('Age: $age');
  }
}

// 함수 선언: 위치 기반 매개변수를 사용하는 함수
void printInfo(String name, int age) {
  print('Name: $name');
  print('Age: $age');
}