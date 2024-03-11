import 'dart:io';
main()
{
  List output = [] ;

  for(int i=0; i<29; i++)
  {
    stdout.write("Enter the name of states : ");
    String input = stdin.readLineSync()!;
    output.add(input);
  }

  print("'Indias states are : ");

  output.forEach((element) {
    print(element);
    });
}