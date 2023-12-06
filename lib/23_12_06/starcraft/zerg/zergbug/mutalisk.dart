import '../../interface/medic_curable.dart';
import 'interface/zergbug.dart';

class Mutalisk extends ZergBug {
  @override
  double hp;

  @override
  void autoheal(){
    hp += 10.0;
    print('자동회복 + 10 , 현재 HP : $hp');
  }

  Mutalisk({
    required this.hp,
  });
}