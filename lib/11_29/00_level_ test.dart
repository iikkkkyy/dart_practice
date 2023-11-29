void main() {


  if (palindrome("우영우")){
    print('회문입니다');
  }else{
    print('회문이 아닙니다.');
  }

  List<int> numbers = [5,4,1,2,100,8,9];
  print('가장 큰 두수를 합한 값은 ${maxNumber(numbers)} 입니다');

  int a = 5;
  print('$a 의 팩토리얼값은 ${factorial(a)}');

}


bool palindrome(String str){
  List<String> originList = str.split('');
  List<String> reverseList = originList.reversed.toList();
  if(originList.toString() == reverseList.toString()) return true;
  else return false;

}

int maxNumber(List<int> numbers){
  numbers.sort();
  return (numbers[numbers.length -1] + numbers[numbers.length - 2]);
}


int factorial(int a){
  int factorial = 1;
  for(int i = 1; i < a + 1 ; i++){
    factorial = factorial * i;
  }
  return factorial;
}