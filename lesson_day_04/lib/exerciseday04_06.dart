void main(){
  int sum = 10;
  int i = 1;
  while (i <= 20){
    if(i % 2 == 0){
      sum = sum + i;
      print("$sum");
    }
    i = i + 1;
  }
}