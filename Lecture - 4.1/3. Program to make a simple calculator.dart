import 'dart:io';

void main() {
  double n1, n2;
  int choice;
  String op;

  do {
    stdout.write("\nEnter operator (+,-,*,/,%) : ");
    op = stdin.readLineSync()!;

    stdout.write("Enter First number : ");
    n1 = double.parse(stdin.readLineSync()!);
    stdout.write("Enter Second number : ");
    n2 = double.parse(stdin.readLineSync()!);

    switch (op) {
      case "+":
        print("Sum is : ${Addition(n1, n2)}");
        break;

      case "-":
        print("Substraction is : ${Substraction(n1, n2)}");
        break;

      case "*":
        print("Multiplication is : ${Multiplication(n1, n2)}");
        break;

      case "/":
        print("Division is : ${Division(n1, n2)}");
        break;

      case "%":
        print("Module is : ${Module(n1, n2)}");
        break;

      default:
        print("Invalid operator...!!");
    }
    stdout.write(
        "\nFor Exit Press : 0\nFor Continue Press : 1\nEnter Your Choice : ");
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 0) print("\nCalculator Off! Thank You....\n");
  } while (choice == 1);
}

double Addition(double n1, double n2) => n1 + n2;
double Substraction(double n1, double n2) => n1 - n2;
double Multiplication(double n1, double n2) => n1 * n2;
double Division(double n1, double n2) => n1 / n2;
double Module(double n1, double n2) => n1 % n2;