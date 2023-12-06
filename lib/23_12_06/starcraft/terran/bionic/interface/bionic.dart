import '../../../interface/army_unionable.dart';
import '../../../interface/medic_curable.dart';
import '../../interface/terran.dart';

abstract class Bionic extends Terran implements MedicCurable, ArmyUnionable {}