import 'dart:io';

double Sum([double? a, double? b]) => a! + b!;

void main() {
  double n1, n2;

  stdout.write("Enter value of n1 : ");
  n1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter value of n2 : ");
  n2 = double.parse(stdin.readLineSync()!);

  print("\nSum is : ${Sum(n1, n2)}\n");
}