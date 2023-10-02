import 'dart:math';
void main(){
  print(ex03(6, -5));
  print(ex03(-5, 6));
  print(ex03(0, 12));
}
int ex03(int x, int y){

  int c=x*x-2*x*y+y*y;

  if(c < 10){
    print('This number is less than 10');
  }else{
    print('This number is greater than 10');
  }
  return c;
}