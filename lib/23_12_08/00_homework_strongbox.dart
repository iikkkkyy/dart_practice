// 열거형 KeyType을 정의하고
enum KeyType { padlock, button, dial, finger }

// 금고 클래스에 담는 인스턴스의 타입은 미정
class StrongBox<E extends KeyType> {

  // 금고에는 1개의 인스턴스를 담을 수 있음
  // 열쇠의 종류를 나타내는 필드 변수
  KeyType _keyType;

  // 최초 카운트 선언
  int keyCount = 0;

  //put() 메서드로 인스턴스를 저장하고
  //열쇠의 종류를 받는 생성자
  void put(KeyType keyType) {
    _keyType = keyType;
  }

  //get() 메서드로 인스턴스를 얻을 있음
  //get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨 .?.?
  String? get() {
    switch (_keyType) {
      case KeyType.padlock:
        keyCount++;
        return keyCount > 1024 ? "사용 횟수 초과" : null;
      case KeyType.button:
        keyCount++;
        return keyCount > 10000 ? "사용 횟수 초과" : null;
      case KeyType.dial:
        keyCount++;
        return keyCount > 30000 ? "사용 횟수 초과" : null;
      case KeyType.finger:
        keyCount++;
        return keyCount > 1000000 ? "사용 횟수 초과" : null;
    }
  }

  @override
  String toString() {
    return 'StrongBox{_keyType: $_keyType, keyCount: $keyCount}';
  }

  StrongBox({
    required E keyType,
  }) : _keyType = keyType;
}

void main() {
  StrongBox padlock = StrongBox(keyType: KeyType.padlock);
  StrongBox padlock2 = StrongBox(keyType: KeyType.padlock);
  for (int i = 0; i < 1025; i++) {
    print(padlock.get());
  }
  print(padlock.get());
  padlock.put(KeyType.button);
  print(padlock.get());
}
