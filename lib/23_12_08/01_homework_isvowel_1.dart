// 실습 1
// i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오
// 영어에서의 모음은 a, e, i, o, u 다섯가지이다

// 실습 2
// i 번째 글자가 자음인지 알려주는 isConsonant() 함수를 완성하시오
enum Vowels { a, e, i, o, u }

class Word {
  String word = 'asdfasdfasdfasdf';

  bool isVowel(int i) {
    for (Vowels vowel in Vowels.values) {
      if (word.substring(i, i + 1).toLowerCase() == vowel.name) {
        return true;
      }
    }
    return false;
  }

  bool isConsonant(int i) {
    for (Vowels vowel in Vowels.values) {
      if (word.substring(i, i + 1).toLowerCase() == vowel.name) {
        return false;
      }
    }
    return true;
  }
}

void main() {
  print(Word().isVowel(3));
  print(Word().isConsonant(3));
}
