import 'dart:io';
main()
{
  List<int> l1 = [1,2,3];
  List l2 = [];

  l2 = l1.map((e) => "$e Hello").toList();

  print(l2);
}