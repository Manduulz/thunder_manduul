import 'dart:io';
void main(){

  print('Enter an integer:');
  String? input = stdin.readLineSync();
  int a = int.parse(input!);

  if (a % 2 == 1){
    print('$a is odd.');
  } else {
    print('$a is even');
  }
}