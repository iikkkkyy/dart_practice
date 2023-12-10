void main() {
  final stopWatch = Stopwatch()..start();

  test1();

  print(stopWatch.elapsedMilliseconds);
}

// 메모리는 16GB 동일
// m1max vs m2


// m1max(오준석강사님) 6, m2 3.6초
void test1() {
  var string = '';

  for (int i = 0; i < 100000; i++) {
    string += i.toString();
  }
}

// m1max(오준석강사님) 6 , m2 5
void test2() {
  var string = StringBuffer('');

  for (int i = 0; i < 100000; i++) {
    string.write(i.toString());
  }
}
