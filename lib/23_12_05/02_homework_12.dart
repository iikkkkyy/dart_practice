// 연습문제 12-1
// 어떤 회사에서 자산관리 프로그램을 만들려고 한다. 현시점에서 컴퓨터, 책 을 표현하는, 다음과 같은 두개의 클래스가 있다
// 이후, 컴퓨터와 책 이외에도 여러가지 자산을 관리하고 싶은 경우에 유용한 유형자산(TangibleAsset) 이라는 이름의 추상클래스를 작성 하시오. 또, Computer 나 Book 은 그 부모 클래스를 활용한 형태로 수정 하시오.

class Book extends TangibleAsset {

  String isbn;

  Book({
    required this.isbn, required super.name, required super.price, required super.color,
  });
}

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required this.makerName, required super.name, required super.price, required super.color,
  });
}


abstract class TangibleAsset{
  String name;
  int price;
  String color;

  TangibleAsset({
    required this.name,
    required this.price,
    required this.color,
  });
}

void main() {
  Book book = Book(isbn: '11-56-11-24', name: 'karl', price: 20000, color: 'red');
  Computer computer = Computer(makerName: 'apple', name: 'karl', price: 2000000, color: 'spaceGray');
}