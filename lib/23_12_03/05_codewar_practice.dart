import "package:test/test.dart";


int numPrimorial(int n) {
  int flag = 0;


  int totalNum = 1;
  List<int> numArr = [];
  List<int> tempArr = [];
  int i = 2;
  print("$flag $n");
  while (flag < n) {
    // print("?????????????$flag");
    //정리해보자.. int배열에다가 2부터 넣으면서 기존 배열의 값으로 나눴던 것들중에 나머지가 0이  아니면 flag + 1 하고 배열에 넣기
    bool flag2 = true;
    for (int j = 0; j < numArr.length; j++) {
      if (i % numArr[j] == 0 ) {
        flag2 = false;
      }
    }

    if (flag2){
      // print('i값은 $i flag값은 $flag numArr값은 $numArr ');
      numArr.add(i);
      flag++;
    }



    i++;
  }

  for(int a = 0; a < numArr.length; a++){
    totalNum *= numArr[a];
  }
  return totalNum;
}

void main() {
  group("Basic tests", () {
    test("Testing for 3", () => expect(numPrimorial(3), equals(30)));
    test("Testing for 4", () => expect(numPrimorial(4), equals(210)));
    test("Testing for 5", () => expect(numPrimorial(5), equals(2310)));
    test("Testing for 8", () => expect(numPrimorial(8), equals(9699690)));
    test("Testing for 9", () => expect(numPrimorial(9), equals(223092870)));
  });
}