import "package:test/test.dart";

void main() {
  void tester(int n, List<List<int>> exp) => test("Testing for $n", () => expect(pyramid(n), equals(exp)));
  group('basic tests', () {
    tester(0, []);
    tester(1, [[1]]);
    tester(2, [[1], [1, 1]]);
    tester(3, [[1], [1, 1], [1, 1, 1]]);
  });
}

List<List<int>> pyramid(int n) {

  if(n==0){
    return [];
  }

  List<List<int>> a = [[1]];

  for(int i = 1; i < n ;i ++){
    List<int> last = List.from(a[i-1]);
    print('$last + i $i');
    last.add(1);
    a.add(last);
  }

  return a;
}