import 'dart:io';

void main() {
  SuperMarket supermarket = SuperMarket();
  int count = 1;
  int ck, check;

  List customers = [];
  List cart = [];
  List map = [
    {'name': "Milk", 'id': 0, 'qty': 0, 'price': 250},
    {'name': "Sugar", 'id': 0, 'qty': 0, 'price': 180},
    {'name': "Salt", 'id': 0, 'qty': 0, 'price': 300},
    {'name': "Tea", 'id': 0, 'qty': 0, 'price': 180},
    {'name': "Cofee", 'id': 0, 'qty': 0, 'price': 200},
    {'name': "Snacks", 'id': 0, 'qty': 0, 'price': 400},
  ];

  do {
    supermarket.GetChoice();

    switch (supermarket.Choice) {
      case 1:
        print("\nEnter Customer $count Details :");
        SuperMarket supermarket = SuperMarket();
        supermarket.setter();
        customers.add(supermarket);
        count++;
        check = 1;
        do {
          if (check == 1) {
            supermarket.Product();
            if (supermarket.qty != 0) {
              Map mapOfCart = {
                'name': map[supermarket.ChoiceProduct - 1]['name'],
                'id': supermarket.cust_id,
                'qty': supermarket.qty,
                'price': map[supermarket.ChoiceProduct - 1]['price'],
              };
              cart.add(mapOfCart);
            }
          } else {
            print("\nThank You....\n");
            break;
          }
          stdout.write("\nDo You want to add Another Product\n[1 or 0] : ");
          int ck = int.parse(stdin.readLineSync()!);
          check = ck;
        } while (true);
        break;

      case 2:
        for (int i = 0; i < customers.length; i++) {
          customers[i].getter(i);
          print("\n>-------- Customer ${i + 1} cart Details --------< ");
          for (int j = 0; j < cart.length; j++) {
            if (cart[j]['id'] == customers[i].cust_id) {
              print(
                  "Name : ${cart[j]['name']}, Quantity : ${cart[j]['qty']}, Price : ${cart[j]['price']}");
            }
          }
          print("");
          supermarket.TotalBill(i, cart, customers, map);
        }
        print("\n------------------------------------------------");
        break;

      case 3:
        bool found = false;
        stdout.write("\nEnter Customer ID Number : ");
        int search = int.parse(stdin.readLineSync()!);
        print("----------------------------");
        for (int i = 0; i < customers.length; i++) {
          if (search == customers[i].cust_id) {
            customers[i].getter(i);
            print("\n>-------- Customer ${i + 1} cart Details --------< ");
            for (int j = 0; j < cart.length; j++) {
              if (cart[j]['id'] == customers[i].cust_id) {
                print(
                    "Name : ${cart[j]['name']}, Quantity : ${cart[j]['qty']}, Price : ${cart[j]['price']}");
              }
            }
            print("");
            found = true;
            supermarket.TotalBill(i, cart, customers, map);
          }
        }
        print("------------------------------------------------");
        if (found == false) {
          print("Customer ID Number not found..!!");
        }
        break;

      case 4:
        print("\n----------------------------");
        print("Thank you for Visit..");
        print("----------------------------\n");
        break;

      default:
        print("\nInvalid Choice (Enter 1,2,3,4)..!!\n");
    }
  } while (supermarket.Choice != 4);
}

class SuperMarket {
  late String cust_name, cust_contact;
  late int cust_id, Choice, ChoiceProduct, qty;

  void setter() {
    stdout.write("Enter Customer ID: ");
    cust_id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Customer Name: ");
    cust_name = stdin.readLineSync()!;
    stdout.write("Enter Customer Contact: ");
    cust_contact = stdin.readLineSync()!;
  }

  void getter(int i) {
    print("\n------------------------------------------------");
    print("Customer ${i + 1} Deails are Below...");
    print("Customer ID     : $cust_id");
    print("Customer Name   : $cust_name");
    print("Customer Contact: $cust_contact");
  }

  void GetChoice() {
    print("\n----------------------------------");
    print("Enter 1 : Add Customer");
    print("Enter 2 : Display All Customer");
    print("Enter 3 : Search Customer By ID");
    print("Enter 4 : For Exit");
    print("----------------------------------");
    stdout.write(">> Enter Your Choice : ");
    Choice = int.parse(stdin.readLineSync()!);
    print("----------------------------------");
  }

  void Product() {
    print("\nWelcome To Our Super Market");
    print("Enter 1 For Milk - Price(250)");
    print("Enter 2 For Sugar - Price(180)");
    print("Enter 3 For Salt - Price(300)");
    print("Enter 4 For Tea - Price(180)");
    print("Enter 5 For Cofee - Price(200)");
    print("Enter 6 For Snacks - Price(400)");
    stdout.write("Enter Your Choice : ");
    ChoiceProduct = int.parse(stdin.readLineSync()!);
    if (ChoiceProduct >= 1 && ChoiceProduct <= 6) {
      stdout.write("Enter Quantity : ");
      qty = int.parse(stdin.readLineSync()!);
    } else {
      print("\nInvalid Choice\n");
      Product();
    }
  }

  void TotalBill(int i, List cart, List customer, List map) {
    double total = 0, Discount = 0;
    for (int j = 0; j < cart.length; j++) {
      if (cart[j]['id'] == customer[i].cust_id) {
        int temp1 = cart[j]['price'];
        int temp2 = cart[j]['qty'];
        total += (temp1 * temp2);
      }
    }
    late double d = 0;

    print("Total Amount :  $total");

    if (total >= 500 && total <= 1500) {
      d = 10;
      Discount = (total * 10) / 100;
      total = total - Discount;
    } else if (total > 1500 && total <= 3500) {
      d = 20;
      Discount = (total * 20) / 100;
      total = total - Discount;
    } else if (total > 3500 && total <= 6500) {
      d = 25;
      Discount = (total * 25) / 100;
      total = total - Discount;
    } else if (total > 6500) {
      d = 30;
      Discount = (total * 30) / 100;
      total = total - Discount;
    }

    print("Discount: $Discount ($d %)");
    print("Payment: $total");
  }
}