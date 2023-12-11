// 연습문제 7-1
// 총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성하고 직렬화하여 company.txt 파일에 쓰는 프로그램을 작성하시오.
// 직렬화를 위해 위의 2개 클래스를 일부 수정해도 됩니다.


import 'dart:io';

class Employee {
  final String name;
  final int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }

  Employee.fromJson(Map<String, dynamic> json)
    : name = json['name'],
      age = json['age'];

}

class Department {
  final String name;
  final Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'leader' : leader.toJson(),
    };
  }

  Department.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        leader = json['leader'];
}

void main() {
  // 총무부 리더 ‘홍길동(41세)’의 인스턴스
  Department department = Department('총무부', Employee('홍길동', 41));

  // leader 직렬화
  print(department.leader.toJson());

  // department 직렬화
  print(department.toJson());

  // 직렬화된 결과 company.txt 에 작성
  final myFile = File('company.txt');
  myFile.writeAsStringSync(department.toJson().toString());

}
