import 'dart:io';
void main(){
  //String? input = stdin.readLineSync();
  //print(input);
  //print('You have given a number: $input');

  //print('say your name');
  //String? myName = stdin.readLineSync();
  //print('your name is $myName');

  //print('How old are you');
  //String? myAge = stdin.readLineSync();
  //print('My age is $myAge');

  print('Gice me your first number');
  String? firstNumber = stdin.readLineSync();
  int a = int.parse(firstNumber!);
  print('Give me your second number');
  String? secondNumber = stdin.readLineSync();
  int b = int.parse(secondNumber!);
  print(firstNumber);
  print(secondNumber);
  print('Sum: ${a + b}');
}