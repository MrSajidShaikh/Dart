import 'dart:io';

class DistanceConverter {
  late var feet, inches;

  void setter() {
    stdout.write("Enter the feet : ");
    feet = int.parse(stdin.readLineSync()!);

    stdout.write("Enter the inches : ");
    inches = int.parse(stdin.readLineSync()!);
  }

  void convert() {
    feet = (inches ~/ 12) + feet;
    inches = inches % 12;
  }

  void getter()
  {
    stdout.write("\n$feet feet and $inches inches\n");
  }
}

void main() {
  DistanceConverter obj = new DistanceConverter();

  obj 
   ..setter()
   ..convert()
   ..getter();
}