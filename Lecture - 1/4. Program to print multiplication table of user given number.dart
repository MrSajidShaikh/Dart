import 'dart:io' ;
main()
{
  stdout.write("Enter the starting number : ");
  String x = stdin.readLineSync()!;
  int start = int.parse(x);

  for(int i=1; i<=10; i++)
  {
    int a = start * i;
    print("$start x $i = $a");
  }
}