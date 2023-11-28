void main() {
  // 산술 연산자
  int a = 10;
  int b = 5;
  print("a + b = ${a + b}"); // 더하기
  print("a - b = ${a - b}"); // 빼기
  print("a * b = ${a * b}"); // 곱하기
  print("a / b = ${a / b}"); // 나누기
  print("a % b = ${a % b}"); // 나머지

  // 비교 연산자
  print("a > b : ${a > b}");
  print("a < b : ${a < b}");
  print("a >= b : ${a >= b}");
  print("a <= b : ${a <= b}");
  print("a == b : ${a == b}");
  print("a != b : ${a != b}");

  // 논리 연산자
  bool x = true;
  bool y = false;
  print("x && y : ${x && y}");
  print("x || y : ${x || y}");
  print("!x : ${!x}");

  // 할당 연산자
  int c = 5;
  c += 3; // c = c + 3;
  print("c : $c");
  c -= 2; // c = c - 2;
  print("c : $c");
  c *= 4; // c = c * 4;
  print("c : $c");
  c ~/= 3; // c = c ~/ 3;
  print("c : $c");
  c %= 2; // c = c % 2;
  print("c : $c");

  // 증감 연산자
  int d = 7;
  d++; // d = d + 1;
  print("d : $d");
  d--; // d = d - 1;
  print("d : $d");
}