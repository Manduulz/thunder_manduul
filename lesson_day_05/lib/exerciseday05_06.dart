import 'dart:io';

void main() {
  print("Give me a number");
  int a = int.parse(stdin.readLineSync()!);

  int f_n_1 = 0;
  int f_n_2 = 1;
  int f_n = 0;

  while(f_n <= a) {
    f_n = f_n_2 + f_n_1;
    print(f_n);
    f_n_1 = f_n_2;
    f_n_2 = f_n;
  }
}
