import 'dart:io';

class Student
{
  late String name,course;
  late int roll_no;

  Student({required this.roll_no, required this.name, required this.course});

  List Student_Details = [
  {'Roll no' : '1' , 'Name' : 'Sajid' , 'Course' : 'Flutter'},
  {'Roll no' : '2' , 'Name' : 'Ravi'  , 'Course' : 'Flutter'},
  {'Roll no' : '3' , 'Name' : 'Sahil' , 'Course' : 'Flutter'},
  {'Roll no' : '4' , 'Name' : 'Vishal', 'Course' : 'Flutter'},
  {'Roll no' : '5' , 'Name' :  'Yash' , 'Course' : 'Flutter'}
  ];
}


void main()
{

}