import "package:test/test.dart";

List<int> shakeTree(List<String> tree) {
  //Your code here
  // i는 1번줄 i번째 문자
  // j는 줄
  List<int> intList = List.filled(tree[0].length, 0);
  int i = 0;
  int j = 1;
  int x = 0;
  String nut = tree[0];
  bool isFirst = true;
  print(tree.length);
  while (true) {
    if (i == nut.length) {
      break;
    }
    if (nut[i] == 'o') {

      if (isFirst) {
        x = i;
      }
      print("i: $i j : $j x : $x");
      String tmp = tree[j];
      if (j == tree.length - 1) {
        intList[x] += 1;
        i++;
        j = 1;
        isFirst = true;
        continue;
      }
      if (tmp[x] == '.') {
        j++;
        print('.');
        isFirst = false;
        continue;
      }
      if (tmp[x] == '/') {
        j++;
        x--;
        isFirst = false;
        print('/');
        continue;

      }
      if (tmp[x] == "\\") {
        j++;
        x++;
        isFirst = false;
        print('\\');
        continue;

      }
      if (tmp[x] == "_") {
        i++;
        j = 1;
        isFirst = true;
        print('_');
        continue;

      }
      if (tmp[x] == "|") {
        j++;
        isFirst = false;
        print('|');
        continue;

      }
      if (tmp[x] == " ") {
        j++;
        isFirst = false;
        print('빈칸? "${tmp[x]}"');
        continue;

      }



    }else {


      i++;
      isFirst = true;
      continue;
    }

  }
  return intList;
}



void main() {
  test("Bounce Left", () {
    var tree = [" o o o  ",
      " /    / ",
      "   /    ",
      "  /  /  ",
      "   ||   ",
      "   ||   ",
      "   ||   "];
    var actual = shakeTree(tree);
    var expected = [1,1,0,0,1,0,0,0];
    expect(actual,equals(expected));
  });
  test("Bounce Right", () {
    var tree = [" o o o  ",
      " \\    \\ ",
      "   \\    ",
      "  \\  \\  ",
      "   ||   ",
      "   ||   ",
      "   ||   "];
    var actual = shakeTree(tree);
    var expected = [0,0,0,1,1,0,1,0];
    expect(actual, equals(expected));
  });
  test("Get stuck", () {
    var tree = [" o o o  ",
      " _      ",
      "   _ _  ",
      "   ||   ",
      "   ||   ",
      "   ||   "];
    var actual = shakeTree(tree);
    var expected = [0,0,0,0,0,0,0,0];
    expect(actual, equals(expected));
  });
}
