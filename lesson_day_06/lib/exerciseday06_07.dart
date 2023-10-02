import 'dart:math';
void main(){
  print(isDivisibleByFive(25));
  print(isDivisibleByFive(10));
  print(isDivisibleByFive(21));
}
bool isDivisibleByFive(int number){
  if(number % 5 == 0){
    return true;
  }else{
    return false;
  }
}