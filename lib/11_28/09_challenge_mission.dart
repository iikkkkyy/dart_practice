void main() {

  // 플레이어마다 clap개수
  List<int> numbers = [0,0,0,0];

  // 총 clap / rool / ahh 카운트 개수
  int clapCount = 0;
  int roolCount = 0;
  int ahhCount = 0;
  int maxNumber = 0;
  int topPerson = 0;

  for(int i = 1; i < 101; i++){
    if (i % 30 == 0) {
      ahhCount += 1;
      print('player${(i-1)%4 + 1} : ahh');
    } else if (i % 10 == 0) {
      roolCount += 1;
      print('player${(i-1)%4 + 1} : rool');
    } else if (i% 3 == 0){
      clapCount += 1;
      numbers[(i-1)%4] = numbers[(i-1)%4] + 1;
      print('player${(i-1)%4 + 1} : clap');
    } else{
      print('player${(i-1)%4 + 1} : $i');
    }
  }

  print('clap의 총 갯수: $clapCount');
  print('rool의 총 갯수: $roolCount');
  print('ahh의 총 갯수: $ahhCount');

  // 플레이어마다 clap 갯수 및 maxnumber 계산
  for(int i = 0; i < 4 ; i++){
    if(numbers[i] > maxNumber){
      maxNumber = numbers[i];
      topPerson = i + 1;
    }
    print('Player ${i+1} : ${numbers[i]}');
  }

  print('가장 많은 clap을 출력한 플레이어: Player $topPerson');

}

