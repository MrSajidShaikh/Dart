import 'dart:io' ;
main()
{
  stdout.write("Enter the starting number : ");
  String x = stdin.readLineSync()!;
  int start = int.parse(x);

  stdout.write("Enter the ending number : ");
  String y = stdin.readLineSync()!;
  int end = int.parse(y);

  for(int i=start; i<=end; i++)
  {
    for(int j=1; j<=10; j++)
    {
      print("$i x $j = $(i * j)");
    }
  }
}