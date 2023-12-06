import '../../interface/medic_curable.dart';
import 'interface/bionic.dart';

class Medic extends Bionic implements MedicCurable {
  Medic({required this.hp});

  void heal(MedicCurable unit) {
    unit.hp += 10;

    print("메딕의 힐 10을 받아 ${unit.toString()}의 HP가 ${unit.hp} 이 되었다. ");
  }

  @override
  double hp;
}