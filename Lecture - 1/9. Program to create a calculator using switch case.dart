import 'dart:io';

void main() {
  // Display menu
  print('Calculator Menu:');
  print('1. + ');
  print('2. - ');
  print('3. x ');
  print('4. / ');

  // Get user choice
  stdout.write('Enter your choice (1-4): ');
  int choice = int.parse(stdin.readLineSync()!);

  // Get user input for two numbers
  stdout.write('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  // Perform calculation based on user choice
  double result = 0;
  switch (choice) {
    case 1:
      result = num1 + num2;
      print('Result: $result');
      break;
    case 2:
      result = num1 - num2;
      print('Result: $result');
      break;
    case 3:
      result = num1 * num2;
      print('Result: $result');
      break;
    case 4:
      if (num2 != 0) {
        result = num1 / num2;
        print('Result: $result');
      } else {
        print('Error: Cannot divide by zero.');
      }
      break;
    default:
      print('Invalid choice. Please choose a number between 1 and 4.');
  }
}
