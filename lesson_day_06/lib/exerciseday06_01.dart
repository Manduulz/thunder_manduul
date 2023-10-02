import 'dart:math';
void main(){
  print(ex01(7, 8));
  print(ex01(5, 9));
  print(ex01(-5, 10));
}

int ex01(int x, int y){
  int z = x * x + 2 * x * y + y * y;
  return z;
}
