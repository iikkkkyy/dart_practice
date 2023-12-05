import "package:test/test.dart";


int nextHigher(int n) {
  String binaryString = n.toRadixString(2);
  print(binaryString);
  print(int.parse('100000000', radix: 2));
  for(int i = 0; i < binaryString.length -1 ; i++){
    if(binaryString.length == 2){
      return 2;
    }
    print('${binaryString[binaryString.length -i -1]} ${binaryString[binaryString.length -i -2]} ');
    if(i != binaryString.length -3 && binaryString[binaryString.length -i -1] + binaryString[binaryString.length -i -2 ] == '10'){
      binaryString = binaryString.substring(0,binaryString.length -i -2) + "01" + binaryString.substring(binaryString.length -i -1,binaryString.length -1);
      print(binaryString);
      return int.parse('binaryString', radix: 2);
    }
  }
  return int.parse('100000000', radix: 2);;
}

void main() {
  group("basic tests", () {
    test("Testing for 128", () => expect(nextHigher(128), equals(256)));
    test("Testing for 1", () => expect(nextHigher(1), equals(2)));
    test("Testing for 1022", () => expect(nextHigher(1022), equals(1279)));
    test("Testing for 127", () => expect(nextHigher(127), equals(191)));
    test("Testing for 1253343", () => expect(nextHigher(1253343), equals(1253359)));
  });
}