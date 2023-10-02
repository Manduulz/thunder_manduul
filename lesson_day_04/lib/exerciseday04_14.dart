import 'dart:io';

void main() {
  print("Give me a number");
  int a = int.parse(stdin.readLineSync()!);
  int i = 1;
  int quad = 1;
  while (i <= a) {
    quad = i * i;
    print("Quadrat of $i is $quad");
    i = i + 1;
  }
}
