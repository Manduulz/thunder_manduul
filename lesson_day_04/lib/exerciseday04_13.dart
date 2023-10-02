import 'dart:io';

void main(){
  print("Give me a number");
  int a = int.parse(stdin.readLineSync()!);
  int i = 1;

  int multi = 1;

  while(i <= a){
   multi = multi * i;

    i = i + 1;
  }
  print("Factorial of $a is $multi");
}