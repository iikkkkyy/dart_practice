import "package:test/test.dart";

// bool validBraces(String braces) {
//   // TODO
//   bool flag = true;
//   List<String> a = [];
//   for (int i = 0; i < braces.length; i++) {
//     //처음인지 골라내는 플래그
//     for (int j = 0; j < a.length; j++) {
//       if (braces[i] == braces[j].replaceAll("{", "}")
//           .replaceAll("(", ")")
//           .replaceAll("[", "]")) {
//         flag = false;
//       }
//     }
//     if (flag == true &&
//         (braces[i] !=
//                 braces[i + 1]
//                     .replaceAll("}", "{")
//                     .replaceAll(")", "(")
//                     .replaceAll("]", "[") &&
//             braces[i] !=
//                 braces[braces.length - i - 1]
//                     .replaceAll("}", "{")
//                     .replaceAll(")", "(")
//                     .replaceAll("]", "["))) {
//
//       print('flag $flag braces ${braces[braces.length - i - 1]}');
//       return false;
//     }
//     a.add(braces[i]);
//     flag = true;
//   }
//
//   return true;
// }

bool validBraces(String braces) {
  while (
  braces.contains('()') || braces.contains('[]') || braces.contains('{}')) {
    print("????1 $braces");
    braces = braces.replaceAll('()', "");
    print("????2 $braces");
    braces = braces.replaceAll('[]', "");
    print("????3 $braces");
    braces = braces.replaceAll('{}', "");
    print("????4 $braces");
  }
  return braces.isEmpty;
}

void main() {
  test('Example tests', () {
    expect(validBraces('()'), isTrue);
    expect(validBraces('[]{}{}{}())){}{}{}'), isFalse);
  });
}
