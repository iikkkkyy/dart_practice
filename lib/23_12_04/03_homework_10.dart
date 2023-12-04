// 연습문제 10-1

class Wand {
  final String? _name;
  final double _power;

  Wand({
    required String? name,
    required double power,
  })  : _name = validateName(name),
        _power = validatePower(power);

  String? get name => _name;

  double get power => _power;

  set name(String? name) {
    validateName(name);
  }

  set power(double power) {
    validatePower(power);
  }

  static String validateName(String? name) {
    if (name == null || name.length < 3) {
      throw Exception('Wand의 이름이 null값이거나 3글자 미만입니다.');
    }
    return name;
  }

  static double validatePower(double power) {
    if (power < 0.5 || power > 100.0) {
      throw Exception('마력은 0.5 이상 100.0 이하여야 합니다.');
    }
    return power;
  }
}

// 1. 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
// 2. 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
// 3. 마법사의 지팡이는 null 일 수 없다.
// 4. 마법사의 MP는 0 이상이어야 한다.
// 5. HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)

class Wizard {
  final String? _name;
  final int _hp;
  final int _mp;
  Wand wand;

  Wizard({
    required String? name,
    required int hp,
    required int mp,
    required this.wand,
  })  : _name = validate_name(name),
        _hp = validate_hp(hp),
        _mp = validate_mp(mp);

  String? get name => _name;

  int get hp => _hp;

  int get mp => _mp;

  set name(String? name) {
    validate_name(name);
  }

  set hp(int hp) {
    validate_hp(hp);
  }

  set mp(int mp) {
    validate_mp(mp);
  }

  static String validate_name(String? name) {
    if (name == null || name.length < 3) {
      throw Exception('Wizard의 이름이 null값이거나 3글자 미만입니다. \nNow name : $name');
    }
    return name;
  }

  static int validate_hp(int hp) {
    if (hp < 0) {
      print('hp가 -로 떨어져 0으로 변환합니다...');
      return 0;
    }
    return hp;
  }

  static int validate_mp(int mp) {
    if (mp < 0) {
      throw Exception('Wizard의 mp는 0 이상이여야 합니다. \nNow mp : $mp');
    }
    return mp;
  }
}

void main() {
  final wizard =
      Wizard(name: 'aaa', hp: -2, mp: 10, wand: Wand(name: 'bbb', power: 0.5));
  // wizard.name = 'a';
  print(wizard.hp);
}
