import 'dart:io';
main()
{
  print("Enter any number : ");
  String x = stdin.readLineSync()!;
  int num = int.parse(x);

int a = num * num * num;
  print("the cube of given no. is : $a.");
}