void main() {


  //if-else 문 : 조건에 따라 코드 실행 여부 결정
  int number = 42;
  if (number > 50){
    print('number is greater than 50');
  } else {
    print('number is less than or equal to 50');
  }

  // switch-case 문 : 다중 분기 처리
  String fruit = 'apple';
  switch (fruit) {
    case 'apple':
      print('This is an apple');
      break;
    case 'banana':
      print('This is a banana');
      break;
    default:
      print('This is not a fruit');
  }
  // for-in 문: 리스트나 맵의 모든 항목에 대해 반복
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print(number);
  }

  // while 문: 조건이 참인 동안 코드 반복 실행
  int count = 0;
  while (count < 5) {
    print(count);
    count++;
  }

  // do-while 문: 코드를 최소한 한번 실행하고, 조건이 참인 동안 반복 실행
  int i = 0;
  do {
    print(i);
    i++;
  } while (i < 3);

}