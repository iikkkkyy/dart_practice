// 연습문제 13-1
// 빈칸에 들어갈 적절한 클래스명을 정하시오
// Sword() 인스턴스
// Sword를 생성했지만 어쨌든 Item

// Monster a = slime();
// Slime 을 생성했지만 어쨌든 Monster로 보임

// 연습문제 13-2
// X obj = A(); 로 A인스턴스를 생성한 후, 변수 obj에서 호출할 수 있는 메소드를 a(), b(), c() 중에 골라보시오 => a()
// Y y1 = A(); Y y2 = B(); 로 A와 B의 인스턴스를 생성한 후 y1.a(); y2.a(); 를 실행했을 때에 화면에 표시되는 내용을 말하시오. => Aa, Ba

// 연습문제 13-3
// List 변수의 타입으로 무엇을 사용하여야 하는가 => Y
// 위에서 설명하고 있는 프로그램을 작성하시오

class A extends Y {
  @override
  void a() {
    print('Aa');
  }

  @override
  void b() {
    print('Ab');
  }

  void c() {
    print('Ac');
  }
}

class B extends Y{
  @override
  void a() {
    print('Ba');
  }

  @override
  void b() {
    print('Bb');
  }

  void c() {
    print('Bc');
  }

}


abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
}

void main(){
  // X obj = A();
  Y y1 = A();
  Y y2 = B();
  // y1.a();
  // y2.a();
  List<Y> a = [];
  a.add(y1);
  a.add(y2);
  for(Y y in a){
    y.b();
  }


}