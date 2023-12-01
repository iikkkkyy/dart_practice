void card(int a, int b, int c, int d){
  List<int> numbers = [a,b,c,d];
  numbers.sort();
  print(numbers);
  String first = numbers[3].toString() + numbers[1].toString();
  String second = numbers[2].toString() + numbers[0].toString();
  print('$first + $second = ${int.parse(first) + int.parse(second)}');
}





void main(){
  card(7, 7, 8, 7);
}