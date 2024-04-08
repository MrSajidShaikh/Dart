import 'dart:io';

class Train {
  String? TrainName, TrainSource, Destination;
  int? TrainNumber, TrainTime, choice;

  void setter(int i) {
    print("\n\nEnter Train ${i + 1} Details ");
    stdout.write("Enter Train Number : ");
    TrainNumber = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Train Name : ");
    TrainName = stdin.readLineSync()!;
    stdout.write("Enter Source : ");
    TrainSource = stdin.readLineSync()!;
    stdout.write("Enter Destination : ");
    Destination = stdin.readLineSync()!;
    stdout.write("Enter Train Time : ");
    TrainTime = int.parse(stdin.readLineSync()!);
  }

  void getter(int i) {
    print("\nTrain ${i + 1} Details are below");
    print("--------------------------------");
    print("Train Number : $TrainNumber");
    print("Train Number : $TrainName");
    print("Train Source : $TrainSource");
    print("Train Destination : $Destination");
    print("Train Time : $TrainTime : 00");
    print("--------------------------------");
  }

  void GetChoice() {
    print("\n\nWelcome to Railway Reservation System");
    print("--------------------------------");
    print(" 1 For Add Train Details");
    print(" 2 For Display All Train Details");
    print(" 3 For Search By Train Number");
    print(" 4 For Exit");
    print("--------------------------------");

    stdout.write("Enter Your Choice : ");
    choice = int.parse(stdin.readLineSync()!);
  }
}

void main() {
  int i, n;
  Train train = Train();

  stdout.write("Enter Number of Train : ");
  n = int.parse(stdin.readLineSync()!);

  List<Train> TrainList = [];
  for (i = 0; i < n; i++) {
    Train train = Train();
    train.setter(i);
    TrainList.add(train);
  }

  do {
    train.GetChoice();
    switch (train.choice) {
      case 1:
        stdout.write("\nHow many Train Details You Want to Add :");
        int c = n, addTrain = int.parse(stdin.readLineSync()!);

        for (int i = 0; i < addTrain; i++) {
          Train train = Train();
          train.setter(c);
          TrainList.add(train);
          c++;
        }
        print("\nTrain Add Successfully..\n");
        break;

      case 2:
        print("\nAll Train Details Are Below : ");
        for (int i = 0; i < TrainList.length; i++) {
          TrainList[i].getter(i);
        }
        break;

      case 3:
        bool check = false;
        stdout.write("\nEnter Train Number : ");
        int Number = int.parse(stdin.readLineSync()!);
        for (i = 0; i < TrainList.length; i++) {
          if (TrainList[i].TrainNumber == Number) {
            check = true;
            TrainList[i].getter(i);
          }
        }
        if (!check) stdout.write("\nTrain Not Found..!!\n");
        break;

      case 4:
        stdout.write("\nThank You For Visit...\n");
        break;

      default:
        print("Enter Valid Choice(1,2,3,4)");
    }
  } while (train.choice != 4);
}