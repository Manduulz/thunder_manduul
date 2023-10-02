import 'dart:io';
void main(){
  print("Give me a number");
  int a = int.parse(stdin.readLineSync()!);
  for(int i = 1; i <= 10; i++){
    print("$a X $i = ${a * i}");
  }
}