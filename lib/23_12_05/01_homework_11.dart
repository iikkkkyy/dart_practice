// 연습문제 11-1 다음 중에서 “잘못 된 상속" 인 것을 모두 구하시오
//
// 슈퍼클래스  서브클래스
// Person   Student => true
// Car      Engine => false
// Father   Child => false
// Food     Susi => true
// SuperMan Man => false

// 연습문제 11-2
// 다음 클래스에 대해 “부모 클래스" 와 “자식 클래스" 를 1개씩 생각 해 보시오
// (1) iPhone => Phone => Device
// (2) Ev6 => Car => Vehicle
// (3) Korean Dictionary => Dictionary => Document

// 연습문제 11-3
class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임$suffix이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

class PoisonSlime extends Slime {
  PoisonSlime(super.suffix);

  // 독 공격이 가능한 남은 횟수를 int 형 필드를 가지고 있고 초기값은 5 이다
  int _poisonCount = 5;

  @override
  void attack(Hero hero) {
    print('슬라임$suffix이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
    print('햔재 용사의 HP: ${hero.hp}');
    if (_poisonCount != 0) {
      // 원래 용사의 hp
      int originalHP = hero.hp;
      // 화면에 “추가로, 독 포자를 살포했다!” 를 표시
      print('추가로, 독 포차를 살포했다!');
      // 용사의 HP 의 1/5에 해당하는 포인트를 용사의 HP 로부터 감소시키고, “~포인트의 데미지" 라고 표시
      hero.hp ~/= 5;
      print('${originalHP - hero.hp}포인트의 데미지');
      // “독 공격의 남은 횟수" 를 1 감소 시킨다
      _poisonCount--;
    }
  }
}

class Hero {
  String name;
  int _hp;

  void attack(Slime slime) {
    print('$name $slime을 공격했다.');
    slime.hp -= 10;
  }

  void run() {
    print('$name이 도망쳤다.');
  }


  // 이번 문제에서 HP가 0밑으로 떨어지면 이상하여 조건 추가해주었다.
  Hero({
    required this.name,
    required int hp,
  }) : _hp = validate_hp(hp) ;

  int get hp => _hp;

  set hp(int hp) {
    _hp = validate_hp(hp);
  }

  static int validate_hp(int hp) {
    if (hp < 0) {
      print('hp가 -로 떨어져 0으로 변환합니다...');
      return 0;
    }
    return hp;
  }

}

void main() {
  // PoisonSlime 는 아래의 코드로 인스턴스화 되는 클래스임
  Hero hero = Hero(name: '김강태', hp: 1000);
  PoisonSlime poisonSlime = PoisonSlime('A');
  // 독 포인트 count 테스트
  poisonSlime.attack(hero);
  print(hero.hp);
  poisonSlime.attack(hero);
  print(hero.hp);
  poisonSlime.attack(hero);
  print(hero.hp);
  poisonSlime.attack(hero);
  print(hero.hp);
  poisonSlime.attack(hero);
  print(hero.hp);
  poisonSlime.attack(hero);
  print(hero.hp);
}
