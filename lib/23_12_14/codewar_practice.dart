import "dart:io";

import "package:test/test.dart";

int thirt(int n) {
  List<int> thirteenInt = [1, 10, 9, 12, 3, 4];
  String nString = n.toString();
  int beforeResult = 0;
  while (true) {
    int result = 0;
    for (int i = 0; i < nString.length; i++) {
      sleep(Duration(milliseconds: 100));
      result += (int.parse(nString[nString.length-i-1]) * thirteenInt[i % 6]);
    }
    if(result == beforeResult){
      return result;
    }
    beforeResult = result;
    nString = result.toString();
    print('nString : $nString');
  }
  return 0;
}

void main() {
  // print(thirt(8529));
  testequal(int n, int exp) =>
      test("Testing for $n", () => expect(thirt(n), equals(exp)));
  group("fixed tests", () {
    testequal(8529, 79);
    testequal(85299258, 31);
    testequal(5634, 57);
  });
}
