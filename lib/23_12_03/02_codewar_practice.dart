int factorial(int n) {

  int result = 1;
  if (n == 0) {
    return 1;
  } else {
    for (int i = 0; i < n; i ++){
      result *= i+1;
    }
  }
  return result;
}