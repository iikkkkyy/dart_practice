import 'dart:math';

class Cleric {
  final String name;

  /* 연습문제 2-1
  최대 HP, 최대 MP의 필드가 각 인스턴스별로 있지 않도록, 필드 선언에 적절한 키워드를 추가
   */
  static const int maxHP = 50;
  static const int maxMP = 10;

  int hp;
  int mp;

  /* 연습문제 2-2
  A) 이 클래스는 Cleric("아서스", hp: 40, mp: 5) 와 같이, 이름, HP, MP 를 지정하여 인스턴스화 할 수 있다
  B) 이 클래스는 Cleric("아서스", hp: 35) 와 같이, 이름과 HP만으로 지정하여 인스턴스화 할 수 있다. 이 때, MP는 최대 MP와 같은 값이 초기화 된다
  C) 이 클래스는 Cleric("아서스") 와 같이 이름만을 지정하여 인스턴스화 할 수 있다. 이 때, HP 와 MP 는 최대 HP와 최대 MP로 초기화 된다
  D) 이 클래스는 Cleric 과 같이 이름을 지정하지 않는 경우에는 인스턴스화 할 수 없다고 한다. (이름이 없는 성직자는 존재 할 수 없음)
  E) 생성자는 가능한 한 중복되는 코드가 없도록 작성한다
   */
  Cleric(
    this.name, {
    this.hp = Cleric.maxHP,
    this.mp = Cleric.maxMP,
  });

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHP;
    }
  }

  int pray(int second) {
    int plusMP = 0;
    int tmpMP = 0;
    plusMP = second + Random().nextInt(3);
    mp += plusMP;
    tmpMP = mp;

    if (mp > maxMP) {
      mp = maxMP;
      return (plusMP - (tmpMP - maxMP));
    } else {
      return plusMP;
    }
  }
}

void main() {
  // Test(오버로딩)
  final cleric1 = Cleric("아서스", hp: 40, mp: 5);
  final cleric2 = Cleric("아서스", hp: 40);
  final cleric3 = Cleric("아서스");

  print("cleric1 name:  ${cleric1.name} hp : ${cleric1.hp} mp : ${cleric1.mp}");
  print("cleric2 name:  ${cleric2.name} hp : ${cleric2.hp} mp : ${cleric2.mp}");
  print("cleric3 name:  ${cleric3.name} hp : ${cleric3.hp} mp : ${cleric3.mp}");
}
