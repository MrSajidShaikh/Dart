import 'dart:io';
void main()
{
  stdout.write("Enter a number : ");
  String x = stdin.readLineSync()!;
  int num1 = int.parse(x);

  stdout.write("Enter a number : ");
  String y = stdin.readLineSync()!;
  int num2 = int.parse(y);

  int num3 = num1 + num2 ;

  print(num3);
}