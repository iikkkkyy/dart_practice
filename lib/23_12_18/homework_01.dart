// 연습문제 1
// 다음 코드를 검사하는 테스트 코드를 작성하시오.
// 오류를 찾아내고 수정하시오

class Bank {
  String name;
  String address;
  String phone;

  Bank(this.name, this.address, this.phone);

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        address = json['address'],
        phone = json['phone'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'address': address,
    'phone': phone,
  };
}
