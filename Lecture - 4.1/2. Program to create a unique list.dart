import 'dart:io';

void main() {
  List<String> names = [];

  stdout.write("Enter Size of List : ");
  int size = int.parse(stdin.readLineSync()!);

  print("\nEnter List Names : ");
  for (int i = 0; i < size; i++) {
    stdout.write("Enter String ${i + 1} : ");
    names.add(stdin.readLineSync()!);
  }

  print("\nUnique List is Below : ");
  print(unique(names));
}

List unique(List names) => names.toSet().toList();