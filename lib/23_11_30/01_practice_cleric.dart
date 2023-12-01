import 'dart:math';

class Cleric {
  final String name;
  final int MaxMP = 10;
  final int MaxHP = 50;
  int HP = 50;
  int MP = 10;

  Cleric(this.name);

  void selfAid() {
    if (MP >= 5) {
      MP -= 5;
      HP = MaxHP;
    }
  }

  int pray(int second) {
    int plusMP = 0;
    int tmpMP = 0;
    plusMP = second + Random().nextInt(3);
    MP += plusMP;
    tmpMP = MP;

    if (MP > MaxMP) {
      MP = MaxMP;
      return (plusMP - (tmpMP - MaxMP));
    } else {
      return plusMP;
    }
  }
}

// void main(){
//   final Cleric cleric = Cleric("karl");
//   cleric.MP = 2;
//   cleric.HP = 10;
//   int a = cleric.pray(5);
//   cleric.selfAid();
//   print(a);
//   print(cleric.MP);
//   print(cleric.HP);
// }
