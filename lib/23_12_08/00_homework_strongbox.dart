// 열거형 KeyType을 정의하고
enum KeyType { padlock, button, dial, finger }

// 금고 클래스에 담는 인스턴스의 타입은 미정
class StrongBox<E> {
  // 금고에는 1개의 인스턴스를 담을 수 있음
  // 열쇠의 종류를 나타내는 필드 변수
  KeyType _keyType;

  // 최초 카운트 선언
  int padlockKeyCount = 0;
  int buttonKeyCount = 0;
  int dialKeyCount = 0;
  int fingerKeyCount = 0;

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
        padlockKeyCount++;
        return padlockKeyCount > 1024 ? "사용 횟수 초과" : null;
      case KeyType.button:
        buttonKeyCount++;
        return buttonKeyCount > 10000 ? "사용 횟수 초과" : null;
      case KeyType.dial:
        dialKeyCount++;
        return dialKeyCount > 30000 ? "사용 횟수 초과" : null;
      case KeyType.finger:
        fingerKeyCount++;
        return fingerKeyCount > 1000000 ? "사용 횟수 초과" : null;
    }
  }

  @override
  String toString() {
    return 'StrongBox{_keyType: $_keyType, keyCount: }';
  }

  StrongBox({
    required KeyType keyType,
  }) : _keyType = keyType;
}

void main() {
  // 한 box에 열쇠 종류가 4개있다
  // 열쇠 종류마다 사용 한도가 정해져 있다
  // put으로 열쇠 종류를 바꿀 수 있지만 그 전 열쇠의 카운트는 변하지 않는다.
  // 사용 한도에 도달하였을때 ?를 리턴한다

  // Test
  // button 타입의 상자 생성
  StrongBox box = StrongBox(keyType: KeyType.button);

  // get으로 호출 ( 카운트 1 증가 null값 리턴받을 것이다)
  print('get 호출!! : ${box.get()}');

  // button 타입을 10000번 채우게 추가호출 후 테스트
  for (int i = 0; i < 10000; i++) {
    box.get();
  }
  print('get 호출!! : ${box.get()}');

  // put으로 keytype 변경 및 테스트
  box.put(KeyType.padlock);
  print('get 호출!! : ${box.get()}');
  box.put(KeyType.button);
  print('get 호출!! : ${box.get()}');
  box.put(KeyType.padlock);
  for (int i = 0; i < 1024; i++) {
    box.get();
  }
  print('get 호출!! : ${box.get()}');
}
