import "package:test/test.dart";
String longest(String a, String b) {
  // a중에 a[i]포함되어있으면 스트링 추가
  // b중에 a[i]포함되어있으면 스트링 추가
  // return String?

  String fullString = '';

  String alphabet = "abcdefghijklmnopqrstuvwxyz";
  for(int i = 0; i < alphabet.length; i++){
    if(a.contains(alphabet[i])){
      fullString = fullString + alphabet[i];
    }else{
      if(!fullString.contains(alphabet[i]) && b.contains(alphabet[i])){
        fullString = fullString + alphabet[i];
      }
    }
  }
  return fullString;
}


void main() {
  void testing(String a, String b, String exp) {
    test("longest('$a', '$b')", () => expect(longest(a, b), equals(exp)));
  }
  group("Fixed tests", () {
    testing("aretheyhere", "yestheyarehere", "aehrsty");
    testing("loopingisfunbutdangerous", "lessdangerousthancoding", "abcdefghilnoprstu");
    testing("inmanylanguages", "theresapairoffunctions", "acefghilmnoprstuy");
    testing("lordsofthefallen", "gamekult", "adefghklmnorstu");
    testing("codewars", "codewars", "acdeorsw");
    testing("agenerationmustconfrontthelooming", "codewarrs", "acdefghilmnorstuw");
  });
}