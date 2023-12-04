// 연습문제 2-1
// 다음 정보를 저장하기 좋은 컬렉션을 List, Set, Map 중 고르시오
// 대한민국의 도시 이름 모음 (순서 상관 없음) => Set
// 10명 학생의 시험 점수 => Map
// 대한민국의 도시별 인구수 (순서 상관 없음) => Map

// 연습문제 2-2
// 1) 다음을 수행하는 코드를 작성하시오.
// 2) 이름을 가지는 Person 클래스를 작성하시오. Person 은 반드시 이름을 포함해야 합니다.
// 3) 이름이 ‘홍길동', ‘한석봉' 인 Person 인스턴스를 생성하고, List에 담습니다.
// 4) List에 담긴 모든 Person 인스턴스의 이름을 표시하시오.

// class Person {
//   final String name;
//
//   const Person({
//     required this.name,
//   });
// }
//
// void main(){
//   List<Person> people = [];
//   people.add(Person(name: "홍길동"));
//   people.add(Person(name: "한성복"));
//   for(Person person in people){
//     print(person.name);
//   }
// }

// 연습문제 2-3
// 연습문제 2-3 에서 작성한 Person 클래스로 생성한 ‘홍길동’, ‘한석봉'의 나이를 각각 20, 25살 이라고 할 때, 이름과 나이를 쌍으로 적당한 컬렉션에 넣습니다.
// 그 다음, 컬렉션에 저장한 값을 하나씩 다음과 같이 출력합니다.
// “홍길동의 나이는 20살”
// “한석봉의 나이는 25살”

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });
}

void main(){
  List<Person> people = [];
  Map<String,int> nameAgeMap = {};
  people.add(Person(name: "홍길동",age: 20));
  people.add(Person(name: "한성복",age: 25));

  for(Person person in people){
    nameAgeMap.addAll({person.name : person.age});
  }

  nameAgeMap.entries.forEach((element) {
    print('${element.key}의 나이는 ${element.value}');
  });
}