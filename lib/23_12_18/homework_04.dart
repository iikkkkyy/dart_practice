// 연습문제 4
// 입력으로 문자열을 받아들이는 함수 reverseString을 작성하시오
String reverseString(String input) {
  String reversed = '';
  for (int i = 0; i < input.length; i++) {
    reversed += input[input.length - i - 1];
  }
  return reversed;
}
