import 'dart:io';

void main(){
  print("Give me a number:");
  int a = int.parse(stdin.readLineSync()!);
  int i = 0;
  int sum = 0;

  while(i <= a){
    sum = sum + i;
    i = i + 1;
  }print("Sum from 1 to $a is: $sum");
}