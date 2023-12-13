void main() {
  int solution(int num1, int num2) {
    return num1 * num2;
  }


  print(solution(3, 4)); // 12
  print(solution(27, 19)); // 513

  int solution2(int num1, int num2) {
    return num1 ~/ num2;
  }
  print(solution2(10, 5)); // 2
  print(solution2(7, 2)); // 3

  int solution3(int num1, int num2) {
    if (num1 == num2) {
      return 1;
    } else {
      return -1;
    }
  }

  int solution4(int num1, int num2) {
    return num1 ~/ num2;
  }

  int solution5(int num1, int num2) {
    return num1 ~/ num2;
  }
}
