import 'dart:io';
void main(){
  int a = int.parse(stdin.readLineSync()!);
  for(int i = 1; i <= a; i = i +1){
    print("-$i");
  // int i = 1;
  // while (i <= a){
  //   print("-$i");
  //   i = i + 1;
  }
}