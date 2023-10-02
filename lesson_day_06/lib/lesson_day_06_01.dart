import 'dart:math';

void main() {
  //Functions
  print(sqrt(4));
  print(max(5, 4));
  print(maxFunc(4, 5)); // call max func with values 4, 5
  print(maxFunc(4, 4));  // call max func with 4, 4
  print(maxFunc(10, -2));  //call max func with values 10, -2
  print(giveGravity());
}

int maxFunc(int a, int b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}
//define give Gravity function
double giveGravity(){
  return 9.75;
}
// default value of functions

double division(int x, {int y = 1}){
  return 0;
}
