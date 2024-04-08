import 'dart:io';

class Student {
  String? name, grade;
  int? age, std, id;

  void setter(int i) {
    stdout.write("\nEnter the details of ${i + 1} student\n");
    stdout.write("Enter the id of the student : ");
    id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter the name of the student : ");
    name = stdin.readLineSync();
    stdout.write("Enter the age of the student : ");
    age = int.parse(stdin.readLineSync()!);
    stdout.write("Enter the standard of the student :");
    std = int.parse(stdin.readLineSync()!);
    stdout.write("Enter the grade of the student :");
    grade = stdin.readLineSync();
  }

  void getter(int i) {
    print("\nStudent ${i + 1} Details are Below");
    print("--------------------------------");
    print("The id of the student is : $id");
    print("The name of the student is : $name");
    print("The age of the student is : $age");
    print("The standard of the student is : $std");
    print("The grade of the student is : $grade");
    print("--------------------------------");
  }
}

void main() {
  int n;
  stdout.write("Enter the Number of the student : ");
  n = int.parse(stdin.readLineSync()!);

  List student = [];

  for (int i = 0; i < n; i++) {
    Student s1 = Student();
    s1.setter(i);
    student.add(s1);
  }

  for (int i = 0; i < n; i++) {
    student[i].getter(i);
  }
}
