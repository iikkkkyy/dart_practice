// 연습문제 12-1
// 어떤 회사에서 자산관리 프로그램을 만들려고 한다. 현시점에서 컴퓨터, 책 을 표현하는, 다음과 같은 두개의 클래스가 있다
// 이후, 컴퓨터와 책 이외에도 여러가지 자산을 관리하고 싶은 경우에 유용한 유형자산(TangibleAsset) 이라는 이름의 추상클래스를 작성 하시오. 또, Computer 나 Book 은 그 부모 클래스를 활용한 형태로 수정 하시오.

// 연습문제 12-1
// 문제 12-1 의 회사에서, 형태가 없는 무형자산(IntangibleAsset) 도 관리하려고 생각하고 있다.
// 무형자산에는, 예를들어 특허권(Patent) 등이 있다.
// 무형자산도 유형자산도 자산(Asset)의 일종이다.
// 이것을 전제로 다음의 상속도의 가, 나, 다 부분의 클래스명을 생각 해 보시오. => 가 : Asset, 나 : IntangibleAsset, 다 : Patent

// 연습문제 12-3
// 자산인지 아닌지 따지지 말고, 형태가 있는 것 (Thing) 이면, 무게가 있다
// 그래서, double 형으로 무게(weight)를 얻을 수 있도록 getter/setter를 가지는 인터페이스 Thing 을 만드시오

class Book extends TangibleAsset {
  String isbn;
  double _weight;

  Book({
    required this.isbn,
    required super.name,
    required super.price,
    required super.color,
    required double weight,
  }) : _weight = weight;

  @override
  double get weight => _weight;

  @override
  set weight(double weight) {
    _weight = weight;
  }
}

class Computer extends TangibleAsset {
  String makerName;
  double _weight;

  Computer({
    required this.makerName,
    required super.name,
    required super.price,
    required super.color,
    required double weight,
  }) : _weight = weight;

  @override
  double get weight => _weight;

  @override
  set weight(double weight) {
    _weight = weight;
  }
}

abstract class TangibleAsset extends Asset implements Thing {
  String color;

  TangibleAsset({
    required this.color,
    required super.name,
    required super.price,
  });
}

// class TangibleAsset extends Asset {
//   String color;
//
//   TangibleAsset({
//     required this.color,
//     required super.name,
//     required super.price,
//   });
// }

abstract class Asset {
  String name;
  int price;

  Asset({
    required this.name,
    required this.price,
  });
}

// class AAA implements Thing {
//   double _weight;
//
//   @override
//   double get weight => _weight;
//
//   @override
//   set weight(double weight) {
//     _weight = weight;
//   }
//
//   AAA({
//     required double weight,
//   }) : _weight = weight;
// }

// double get weight는 필드로 인식을 안한다..!
abstract interface class Thing {
  double get weight;

  set weight(double weight);
}

void main() {
  //
  // Book book = Book(
  //     isbn: '11-56-11-24',
  //     name: 'karl',
  //     price: 20000,
  //     color: 'red',
  //     weight: 10.0);
  // Computer computer = Computer(
  //     makerName: 'apple',
  //     name: 'karl',
  //     price: 2000000,
  //     color: 'spaceGray',
  //     weight: 10.0);
  Book book = Book(
    isbn: '11011-11',
    name: 'karl',
    price: 20000,
    color: 'red',
    weight: 100.0,
  );
  Computer computer = Computer(
    makerName: 'apple',
    name: 'karl',
    price: 2000000,
    color: 'spaceGray',
    weight: 7.4,
  );
}
