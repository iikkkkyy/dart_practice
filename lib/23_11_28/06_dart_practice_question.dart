class Calculator {

  int plus(int a, int b){
    int plus = a + b;
    print('$a + $b = $plus');
    return plus;
  }

  int minus(int a, int b){
    int minus = a - b;
    print('$a - $b = $minus');
    return minus;
  }
  int multiplication(int a, int b){
    int multiplication = a * b;
    print('$a x $b = $multiplication');
    return multiplication;
  }

  // 보통의 / 는 소수점까지 나타내서 double형이지만 ~/는 몫만 얻음
  int divide(int a, int b){
    int divide = a ~/ b;
    print('$a / $b = $divide');
    return divide;
  }


}

void main() {
  Calculator calculator = Calculator();
  calculator.plus(4, 2);
  calculator.minus(4, 2);
  calculator.multiplication(4, 2);
  calculator.divide(4, 2);
}