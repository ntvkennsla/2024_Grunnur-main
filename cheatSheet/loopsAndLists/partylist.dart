import 'dart:io';

void main() {
  List<String> partyItems = [];

  bool isAppRunning = true;
  // Add the item to the PartyitemList
  //Print it out
  while(isAppRunning) {
    printMenu();
    String choice = stdin.readLineSync().toString();
    int? numb = int.tryParse(choice);
    if (numb == 1) {
      print("What do you want for your party?");
      String item = stdin.readLineSync().toString();
      partyItems.add(item);
    }
    if (numb == 2) {
      for (String partyItem in partyItems) {
        print(partyItem);
      }
    }
    if (numb == 3) {
      isAppRunning = false;
    }
  }
}

void printMenu() {
  print("What would you like to do?");
  print("1. For add Items to your Party List");
  print("2. View Items in your party list");
  print("3. Exit Program");
}