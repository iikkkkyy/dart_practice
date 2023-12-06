import 'package:dart_exam/23_12_06/starcraft/protoss/protoss_unit/dragun.dart';
import 'package:dart_exam/23_12_06/starcraft/zerg/zergbug/mutalisk.dart';

import 'interface/army_unionable.dart';
import 'protoss/protoss_unit/zealot.dart';
import 'terran/bionic/marine.dart';
import 'terran/bionic/medic.dart';
import 'terran/mechanic/scv.dart';
import 'terran/mechanic/tank.dart';

void main(List<String> args) {

  List<ArmyUnionable> army = [];

  Medic medic = Medic(hp: 50);
  Marine marine = Marine(hp: 10);
  Dragun dragun = Dragun(hp: 30, shield: 10);
  Zealot zealot = Zealot(hp: 30, shield: 10);
  Tank tank = Tank(hp: 150);
  SCV scv = SCV(hp: 50);
  Mutalisk mutalisk = Mutalisk(hp: 100);
  Mutalisk mutalisk2 = Mutalisk(hp: 100);
  Mutalisk mutalisk3 = Mutalisk(hp: 100);
  Mutalisk mutalisk4 = Mutalisk(hp: 100);
  Mutalisk mutalisk5 = Mutalisk(hp: 100);
  Mutalisk mutalisk6 = Mutalisk(hp: 100);
  Mutalisk mutalisk7 = Mutalisk(hp: 100);

  //테란 테스트
  // scv.earn();
  // print('현재 탱크의 HP: ${tank.hp}');
  // scv.repair(tank);
  //scv는 생물유닛을 수리 못한다
  // scv.repair(marine);

  // print('현재 마린의 HP: ${marine.hp}');
  // medic.heal(marine);
  // print('현재 SCV의 HP: ${marine.hp}');
  // SCV는 medic의 힐을 받을 수 있다.
  // medic.heal(scv);
  // medic은 SCV 제외 기계유닛을 힐을 못한다.
  // medic.heal(dragun);
  //
  // // 저그 테스트
  // print('현재 뮤탈리스크의 HP: ${mutalisk.hp}');
  // //뮤탈리스크는 생물유닛이라 메딕의 힐을 받을 수 있음.
  // medic.heal(mutalisk);
  // //저그 종족은 autoHeal 기능이 있음.
  // mutalisk.autoHeal();
  //
  // // 프로토스 테스트
  // print('현재 질럿의 HP: ${zealot.hp}');
  // medic.heal(zealot);
  // print('현재 질럿의 SHIELD: ${zealot.shield}');
  // // 프로토스 는 방어막을 가지며 서서히 회복한다.
  // zealot.recoveryShield();
  //
  army = addArmy(army, medic);
  army = addArmy(army, marine);
  army = addArmy(army, zealot);
  army = addArmy(army, medic);
  army = addArmy(army, tank);
  army = addArmy(army, scv);
  army = addArmy(army, dragun);
  army = addArmy(army, mutalisk);
  army = addArmy(army, mutalisk2);
  army = addArmy(army, mutalisk3);
  army = addArmy(army, mutalisk4);
  army = addArmy(army, mutalisk5); // 여기까지 12
  army = addArmy(army, mutalisk6);
  army = addArmy(army, mutalisk7);
  //
  print(army.length);
  print(army);
}

List<ArmyUnionable> addArmy(List<ArmyUnionable> army, ArmyUnionable unit) {
  if (army.length < 12) {
    army.add(unit);
    return army;
  } else {
    print('정원 마감');
    return army;
  }
}
