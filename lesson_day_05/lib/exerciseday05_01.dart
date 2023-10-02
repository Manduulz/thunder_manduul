import 'dart:io';
void main(){
  int a = int.parse(stdin.readLineSync()!);
  while(a >= 5 && a < 20){
    a = a + 1;
    print("$a While Loop");
  }
}