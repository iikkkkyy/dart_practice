import "dart:convert";

import "package:test/test.dart";

String longestConsec(strarr, k) {
  if(strarr.length == 0){
    print(strarr);
    return "";
  }
  List<String> longest = strarr;
  List<String> longestarr = [];
  bool flag = false;
  for (int i = 0; i < longest.length - k + 1; i++) {
    String x = "";
    for (int j = 0; j < k; j++) {
      x += strarr[i+j];
    }
    print(x);
    longestarr.add(x);
  }

  for (int i = 0; i < longestarr.length; i++) {
    for (int j = 0; j < longestarr.length; j++) {
      if (longestarr[i].length >= longestarr[j].length) {
        flag = true;
      } else {
        flag = false;
        break;
      }
    }
    if (flag == true) {
      return longestarr[i];
    }
  }
  return "";
}

void testing(strarr, k, exp) {
  test("longestConsec([${strarr.map((x) => "'$x'").join(', ')}], $k)", () {
    expect(longestConsec(strarr, k), equals(exp));
  });
}

void main() {
  group("Basic tests", () {
    testing(
        ["zone", "abigail", "theta", "form", "libe", "zas"], 2, "abigailtheta");
    testing([
      "ejjjjmmtthh",
      "zxxuueeg",
      "aanlljrrrxx",
      "dqqqaaabbb",
      "oocccffuucccjjjkkkjyyyeehh"
    ], 1, "oocccffuucccjjjkkkjyyyeehh");
    testing([], 3, "");
    testing([
      "itvayloxrp",
      "wkppqsztdkmvcuwvereiupccauycnjutlv",
      "vweqilsfytihvrzlaodfixoyxvyuyvgpck"
    ], 2,
        "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck");
    testing(["wlwsasphmxx", "owiaxujylentrklctozmymu", "wpgozvxxiu"], 2,
        "wlwsasphmxxowiaxujylentrklctozmymu");
    testing(["zone", "abigail", "theta", "form", "libe", "zas"], -2, "");
    testing(["it", "wkppv", "ixoyx", "3452", "zzzzzzzzzzzz"], 3,
        "ixoyx3452zzzzzzzzzzzz");
    testing(["it", "wkppv", "ixoyx", "3452", "zzzzzzzzzzzz"], 15, "");
    testing(["it", "wkppv", "ixoyx", "3452", "zzzzzzzzzzzz"], 0, "");
  });
}
