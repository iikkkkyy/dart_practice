void ancient(String a){
  List<String> char = a.split('+');
  int resultCount = 0;
  for(String numbers in char){
    for(int i = 0; i  < numbers.length; i++){
      if(numbers[i] == "<"){
        resultCount += 10;
      }else if (numbers[i] == "/"){
        resultCount += 1;
      }
    }

  }
  print(resultCount);
}




void main(){
  ancient("<<<<<<<<</////////+<<<<<<<<</////////");
}