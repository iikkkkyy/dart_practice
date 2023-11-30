/*
M1. 더 큰수 판별하기
기능:
A, B 두 정수 중 더 큰 수를 출력
A, B가 같다면 ‘eq’를 출력
 */
void M1 (int a, int b){
  if (a > b) {
    print('$a');
  } else if (b > a){
    print('$b');
  } else{
    print('eq');
  }
}
/*
설명:
N, M 두 정수가 짝수와 홀수의 쌍이면 “YES”, 그렇지 않으면 “NO”를 출력합니다.
 */

void M2(int a, int b){
  if((a%2 == 1 && b%2 == 0) || (a%2 == 0 && b%2 == 1)){
    print('YES');
  }else{
    print('NO');
  }
}

void M3(String a, String b, String c, String d) => print('$a $b-$c-$d ');

/*
등차수열 출력
 */

void M4(int a, int b, int c){
  for(int i = 0; i < c; i++){
    print('$a');
    a += b;
  }
}
/*
1~5중 부족한 카드 찾기
 */

void M5(List<int> a){
  List<int> cardList = [1,2,3,4,5];
  for(int number in cardList){
    if(!a.contains(number)){
      print('$number');
    }
  }
}

/*
연속된 같은 수 판별
 */

void M6(int a) {
  String b = a.toString();
  if (b.length == 1) {
    print('$a');
  } else {
    var c;
    String d;
    for (int i = 0; i < b.length; i++) {
      if(i !=0 && c != b[i]){
        print ('No');
        return;
      }
      c = b[i];
    }
    print('$a');
  }
}

void M7(List<int> a){
  int previous = 0;
  int firstFlag = 0;
  for(int number in a){
    if(firstFlag != 0){
      print(number - previous);
    }
    previous = number;
    firstFlag++;
  }
}
/*
빼빼로게임
 */

void M8(String a){
  if(a.length > 10){
    print('OK');
  }else{
    print(11 - a.length);
  }
}

void main() {
  // M1(20, 20);
  // M2(12,40);
  // M3('모두연', '010', '1234', '5678');
  // M4(5,10,10);
  // M5([1,3,2,5]);
  // M6(777);
  // M7([5,8,19,25,31]);
  // M8("11111111111");
}
