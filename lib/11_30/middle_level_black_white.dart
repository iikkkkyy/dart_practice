import 'dart:io';


void bwGame(List<String> a){
  List<String> result = [];
  String onerow = "";
  for(String i in a){
    List<String> tmp = i.toString().split(' ');
    for(String j in tmp){
      if(int.parse(j) >= 128){
        onerow += "1 ";
      }else if(int.parse(j) < 128){
        onerow += "0 ";
      }
    }
    onerow.substring(0,onerow.toString().length -1);
    result.add(onerow.toString());
    onerow = "";

  }
  for(String x in result){
    print('$x');
  }
}




void main(){
  stdout.write("입력\n");
  String? ab = stdin.readLineSync();
  print('\n$ab');
  List<String>? linenumber = ab?.split(' ');
  List<String>? blackwhite = [];

  for(int i = 0 ; i  < int.parse(linenumber![0]) ; i++){
    String? c = stdin.readLineSync();
    blackwhite?.add(c!);
  }
  bwGame(blackwhite!);
}