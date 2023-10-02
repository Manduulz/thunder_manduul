import 'dart:io';

void main() {
  print("Give me a number");
  int a = int.parse(stdin.readLineSync()!);
  int i = 1;
  while (i <= a) {
    if (i % 2 == 0) {
      print("Quadrat of $i is ${i * i}. This number is odd.");
    } else {
      print("Quadrat of $i is ${i * i}. This number is even.");
    }
    i = i + 1;
  }
}
