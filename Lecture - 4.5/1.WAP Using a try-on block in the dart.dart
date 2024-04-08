import 'dart:io';

void main()
{
  List a = [1, 2, 3, 4, 5];

  try
  {
    print(a[6]);
  }
  on RangeError
  {
    print("\nList Size is up to 5.. Upper bound is not Valid\n");
  }

}