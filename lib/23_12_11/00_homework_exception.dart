// 연습문제 1
// 다음과 같은 프로그램을 작성, 실행 후 runtime error 를 발생하시오

// 연습문제 2
// 연습 1 에서 작성한 코드를 수정하여, try-catch() 문을 사용하여 예외처리를 하시오.
// 예외가 발생하면 0으로 처리

void main() {
  final numString = '10.5';

  int num;

  try {
    num = int.parse(numString);
  } catch (e) {
    print('Exception 발생!! num => 0 \n$e');
    num = 0;
  }

  print(num);
}
