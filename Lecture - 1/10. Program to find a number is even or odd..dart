import 'dart:io';

void main() {
  // Get user input for a number
  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);

  // Check if the number is even or odd
  if (number % 2 == 0) {
    print('$number is an even number.');
  } else {
    print('$number is an odd number.');
  }
}
