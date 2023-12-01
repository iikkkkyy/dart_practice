import 'dart:io';
void ipCheck(List<String> x){
  List<String> truefalse = [];
  int flag = 0;
  for(String a in x){

    List<String> split = a.split('.');

    if(split.length != 4){
      truefalse.add("False");
      int flag = 1;
    }else{
    for(String b in split) {
      if(!(int.parse(b) >= 0 && int.parse(b) <= 255)){
        truefalse.add("False");
        int flag = 1;
        break;
      }
    }
    if(flag == 0){
      truefalse.add("True");
    }
    }
  }


  for(String a in truefalse){
    print(a);
  }

}



void main() {
  stdout.write("입력\n");
  String? ab = stdin.readLineSync();

  int i = int.parse(ab!);
  print(i);
  List<String> ips = [];
  for(int j = 0 ; j  < i ; j++){
    ips.add(stdin.readLineSync()!);
  }
  print(ips);
  ipCheck(ips);
}