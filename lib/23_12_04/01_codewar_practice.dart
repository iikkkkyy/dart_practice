import "package:test/test.dart";


int nextHigher(int n) {
  String binaryString = n.toRadixString(2);
  print(binaryString);
  for(int i = 0; i < binaryString.length; i++){
    if(binaryString.length == 1){
      return 2;
    }
    if(binaryString[binaryString.length -i -1] == '1' && binaryString[binaryString.length -i -2 ] == '0'){
      binaryString = binaryString.substring(0,binaryString.length -i -2) + "10" + binaryString.substring(binaryString.length -i -1,binaryString.length -1);
      print(binaryString);
      return int.parse(binaryString, radix: 2);
    }
  }
  return 1;
}

void main() {
  group("basic tests", () {
    test("Testing for 128", () => expect(nextHigher(129), equals(130)));
    test("Testing for 1", () => expect(nextHigher(1), equals(2)));
    test("Testing for 1022", () => expect(nextHigher(1022), equals(1279)));
    test("Testing for 127", () => expect(nextHigher(127), equals(191)));
    test("Testing for 1253343", () => expect(nextHigher(1253343), equals(1253359)));
  });
}