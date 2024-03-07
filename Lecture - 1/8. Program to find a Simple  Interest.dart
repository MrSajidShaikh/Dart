import 'dart:io';

void main()
{
  // Get principal amount from user input
  stdout.write('Enter the principal amount: ');
  double principal = double.parse(stdin.readLineSync()!);

  // Get rate of interest from user input
  stdout.write('Enter the rate of interest: ');
  double rate = double.parse(stdin.readLineSync()!);

  // Get time in years from user input
  stdout.write('Enter the time (in years): ');
  double time = double.parse(stdin.readLineSync()!);

  // Calculate Simple Interest
  double simpleInterest = (principal * rate * time) / 100;

  // Print the result
  print('Simple Interest: $simpleInterest');
}
