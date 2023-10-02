import 'dart:io';
void main(){
  int a = int.parse(stdin.readLineSync()!);
  for(int i = 1; i <= a; i = i + 1){
    if(i % 2 == 0){
      print("$i is even number");
    }else{
      print("$i is odd number");
    }
  // int i = 1;
  // while(i <= a){
  //   if(i % 2 == 0){
  //     print("$i is even number");
  //   }else{
  //     print("$i is odd number");
  //   }
  //   i = i + 1;
  }
}