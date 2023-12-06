import '../../interface/medic_curable.dart';
import '../../interface/scv_repairable.dart';
import 'interface/mechanic.dart';

class SCV extends Mechanic implements SCVRepairable, MedicCurable {
  void repair(Mechanic mechanic) {
    mechanic.hp += 10;
      print("SCV가 10만큼 수리를 진행하여 ${mechanic.toString()}의 HP가 ${mechanic.hp} 이 되었다. ");
  }

  void earn() {
    // todo
    print('미네랄 10 획득!');
  }

  @override
  double hp;

  SCV({required this.hp});
}