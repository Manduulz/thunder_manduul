import 'dart:math';
import 'dart:io';
void main(){
  Random random = new Random();
  int randomNumber = random.nextInt(100);
  print("Give me a number");
  int a = int.parse(stdin.readLineSync()!);
  while(a != randomNumber){
    print("Wrong number");
    a = int.parse(stdin.readLineSync()!);
  }
  print("Correct $randomNumber");
}