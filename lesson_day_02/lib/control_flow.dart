import 'dart:io';
void main(){
  int a = 8;
  int b = 6;

  print('give me number a');
  String? input = stdin.readLineSync();
  a = int.parse(input!);
  print('give me number b');
  input = stdin.readLineSync();
  b = int.parse(input!);

  if (a < b){
    print('b is greater than a');
  } else {
    print('a is greater than b');
  }
}