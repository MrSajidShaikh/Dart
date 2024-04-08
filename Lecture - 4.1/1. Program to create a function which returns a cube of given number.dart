import 'dart:io';

void main() {
  stdout.write("Enter the any number : ");
  int num = int.parse(stdin.readLineSync()!);

  print("\nThe Cube of Number is : ${cube(num)}");
}

int cube(int num) => num * num * num;