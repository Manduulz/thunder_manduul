import 'dart:math';
void main(){
  print(ex02(6, 6, 7));
  print(ex02(-6, 7, 8));
  print(ex02(-5, 8, 9));
}

int ex02(int a, int b, int c){
  int z = a*a*a+3*a*b+3*a*c+3*b*c+b*b*b+c*c*c;
  return z;
}