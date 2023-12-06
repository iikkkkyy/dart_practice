import '../../../interface/army_unionable.dart';
import '../../../interface/medic_curable.dart';
import '../../interface/zerg.dart';

abstract class ZergBug extends Zerg implements MedicCurable, ArmyUnionable {}