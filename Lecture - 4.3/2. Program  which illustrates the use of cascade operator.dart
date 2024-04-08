import 'dart:io';

class Student
{
  late var name,std,roll_no;

  void setter()
  {
    stdout.write("Enter your name : ");
    name = stdin.readLineSync();
    stdout.write("Enter your standard : ");
    std = int.parse(stdin.readLineSync()!);
    stdout.write("Enter your roll no : ");
    roll_no = int.parse(stdin.readLineSync()!);
  }

  void getter()
  {
    print("\nYour name is : $name");
    print("Your standard is  : $std");
    print("Your roll no is  : $roll_no");
  }

}
void main()
{
  Student s1 = Student();

  s1
   ..setter()
   ..getter();
}