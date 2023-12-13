import 'dart:math' as math;
import "package:test/test.dart";

String fromNb2Str(int n, List<int> bases) {
  // your code
  int calc = 1;
  bool coprime = false;
  for (int bases in bases) {
    calc *= bases;
  }

  int uhz(int m, int n) {
    while (n != 0) {
      int temp = n;
      n = m % n;
      m = temp;
    }
    print('m : $m');
    return m;
  }

  for (int i = 0; i < bases.length; i++) {
    for (int j = 0; j < bases.length; j++) {
      print('bases[$i] : ${bases[i]} , bases[$j] : ${bases[j]}');
      if (i != j && bases[i] > bases[j] && uhz(bases[i], bases[j]) != 1) {
        return "Not applicable";
      }
    }
  }
  print('coprime : $coprime , calc : $calc');
  if (n > calc) {
    return "Not applicable";
  } else {
    String result = '';
    for (int base in bases) {
      result += '-' + (n % base).toString() + '-';
    }
    return result;
  }
}

void main() {
  dotest(int n, List<int> bases, String exp) {
    test("Testing for: \n$n $bases \n",
        () => expect(fromNb2Str(n, bases), equals(exp)));
  }

  group("fixed tests", () {
    dotest(187, [8, 7, 5, 3], "-3--5--2--1-");
    dotest(446, [8, 7, 5, 3], "-6--5--1--2-");
    dotest(15, [8, 6, 5], "Not applicable");
    dotest(0, [8, 7, 5, 3], "-0--0--0--0-");
    dotest(3450, [17, 5, 3], "Not applicable");
  });
}
