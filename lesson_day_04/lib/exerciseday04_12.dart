import 'dart:io';

void main(){
  int a = int.parse(stdin.readLineSync()!);
  int i = 0;
  while (i <= a){
    i = i + 1;
    if(i % 2 == 0){
      print("$i");
    }
  }

}