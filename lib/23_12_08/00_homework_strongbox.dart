// 금고 클래스에 담는 인스턴스의 타입은 미정
class StrongBox<E> {

  // 금고에는 1개의 인스턴스를 담을 수 있음
  E _some;


  //put() 메서드로 인스턴스를 저장하고
  void put(E some) {
    _some = some;
  }

  //get() 메서드로 인스턴스를 얻을 있음
  //get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨
  E? get() => _some;


  StrongBox({
    required E some,
  }) : _some = some;
}