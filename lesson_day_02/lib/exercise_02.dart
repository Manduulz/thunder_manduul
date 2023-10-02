import 'dart:io';
void main(){
  print('Enter an integer:');
  String? input = stdin.readLineSync();
  int a = int.parse(input!);

  if(a >= 0){
    if(a == 0){
      print('$a is zero');
    }else{
      print('$a is positive');
    }
  } else {
    print ('$a is negative');
  }

}