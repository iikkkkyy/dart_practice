void main() {

  // null check operator
  String? name;
  name = "aa";

  String age = '25';


  // print(name?.length);

  if(name != null){
    print('it is not null');
  } else {
    print('it is null');
  }

  print(age.length);
}