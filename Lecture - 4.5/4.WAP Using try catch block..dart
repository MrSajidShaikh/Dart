import 'dart:io';

void main()
{
  late int x,y;

  try
  {
    stdout.write("Enter Value of x : ");
    x = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Value of y : ");
    y = int.parse(stdin.readLineSync()!);
  }
  catch(e)
  {
    print("Type of Variable x is integer!! : $e ");
  }

  print("\nSum is : ${x+y}\n");
}