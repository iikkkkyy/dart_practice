import '../../interface/army_unionable.dart';
import '../../interface/scv_repairable.dart';
import 'interface/protoss_unit.dart';

class Dragun extends ProtossUnit implements SCVRepairable, ArmyUnionable {
  @override
  double hp;

  Dragun({
    required this.hp,
    required super.shield,
  });



}
