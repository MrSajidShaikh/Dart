class StudentModel
{
  late String name,course;
  late int roll_no;

  StudentModel({required this.roll_no,required this.name,required this.course});

  factory StudentModel.fromStudent({required Map Student})
  {
    return StudentModel(roll_no: 1, name: Sajid, course: Flutter)
  }
}