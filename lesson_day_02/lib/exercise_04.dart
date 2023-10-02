import 'dart:io';
void main(){
  print('Enter the first number');
  String? firstNumber = stdin.readLineSync();
  int a = int.parse(firstNumber!);
  print('Enter the second number');
  String? secondNumber = stdin.readLineSync();
  int b = int.parse(secondNumber!);
  if (90 < a && a  < 100){

    print('$b is greater than $a');
  } else if (a == b){
    print('Both number are equals');
  }
  else {
    print('$a is greater than $b');
  }
}