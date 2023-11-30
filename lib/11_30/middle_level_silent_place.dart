import 'dart:io';


void F1(int a, int b, int x ,int y, int R){
  if(((x-a)*(x-a) + (y-b)*(y-b)) >= R*R ){
    print('적합한 장소입니다.');
    print('위치 ($x,$y)가 공사 현장에서 $R 미터 이상 떨어져 있다');
  }else{
    print('부적합한 장소입니다.');
  }
}



void main(){
  stdout.write("공사현장 좌표 a,b를 입력하세요:(,기준으로 작성) ");
  String? ab = stdin.readLineSync();
  List<String>? abResult = ab?.split(',');

  stdout.write("현재 좌표 x,y를 입력하세요:(,기준으로 작성) ");
  String? xy = stdin.readLineSync();
  List<String>? xyResult = xy?.split(',');

  stdout.write("반경 R을 입력하세요: ");
  String? R = stdin.readLineSync();
  F1(int.parse(abResult![0]), int.parse(abResult![1]), int.parse(xyResult![0]), int.parse(xyResult![1]), int.parse(R!));


}