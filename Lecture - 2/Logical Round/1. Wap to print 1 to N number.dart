import 'dart:io';

class Number
{
  dynamic n;
  void set()
  {
    stdout.write("Enter any number : ");
    n = stdin.readLineSync()!;
    int m = int.parse(n);

    for (int i=1; i<=m; i++)
    {
      print(i);
    }
  }
}
void main()
{
  Number n1 = Number();
  n1.set();
}