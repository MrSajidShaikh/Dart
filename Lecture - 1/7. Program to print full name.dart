import 'dart:io';

void main() 
{
  // Get first name from user input
  stdout.write('Enter your first name: ');
  String firstName = stdin.readLineSync()!;

  // Get last name from user input
  stdout.write('Enter your last name: ');
  String lastName = stdin.readLineSync()!;

  // Print the full name
  print('Your full name is: $firstName $lastName');
}
