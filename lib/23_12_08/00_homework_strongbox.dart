// 열거형 KeyType을 정의하고
enum KeyType { padlock, button, dial, finger }

// 금고 클래스에 담는 인스턴스의 타입은 미정
class StrongBox<E> {
  // 금고에는 1개의 인스턴스를 담을 수 있음
  // 열쇠의 종류를 나타내는 필드 변수
  KeyType _keyType;
  E? _someThing;

  // 최초 카운트 선언
  int _count = 0;

  //put() 메서드로 인스턴스를 저장하고
  //열쇠의 종류를 받는 생성자
  void put(E someThing) {
    _someThing = someThing;
  }

  //get() 메서드로 인스턴스를 얻을 있음
  //get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨 .?.?
  E? get() {
    _count++;
    switch (_keyType) {
      case KeyType.padlock:
        return _count > 1024 ? _someThing : null;
      case KeyType.button:
        return _count > 10000 ? _someThing : null;
      case KeyType.dial:
        return _count > 30000 ? _someThing : null;
      case KeyType.finger:
        return _count > 1000000 ? _someThing : null;
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
  StrongBox<String> box = StrongBox(keyType: KeyType.button);

  // get으로 호출 ( 카운트 1 증가 null값 리턴받을 것이다)
  print('get 호출!! : ${box.get()}');

  box.put('안녕하세요?');
  // button 타입을 10000번 채우게 추가호출 후 테스트
  for (int i = 0; i < 10000; i++) {
    box.get();
  }
  print('get 호출!! : ${box.get()}');

  for (int i = 0; i < 1024; i++) {
    box.get();
  }
  print('get 호출!! : ${box.get()}');
}

// E로 put 받은거를 활용.?
