abstract class Protoss {
  double shield;

  void recoveryShield() {
    // todo 현재 실드량 < 기초 실드량 => (!전투)(x초) 있으면 (y초)마다 실드량 a% 증가
    shield += 10.0;
    print('shield량 10.0 증가하여 실드량이 $shield이 되었다!');
  }

  Protoss({
    required this.shield,
  });
}