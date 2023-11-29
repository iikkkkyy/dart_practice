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

  for(int i = 2; i < n ;i ++){
    List<int> newRow = [];
    List<int> prevRow = a[i-2];
    newRow.add(1);
    for(int j = 1; j< i; j++){
      newRow.add(prevRow[j-1] + prevRow[j]);
    }
    newRow.add(1);
    a.add(newRow);


  }

  return a;
}