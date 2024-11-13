import 'dart:io';

void main() {
  // Búa til tvo strengi
  // Fornafn og eftirnafn
  // prenta út fornafn venjulega
  // skrifa inn eftirnafn með lyklaborði - setja inn eftirnafn
  // prenta út fullt nafn
  // fullname = firstname + second
  // print(fullname)
  String? firstName = "hjalti";
  String? lastName = "";
  print('what is your last name?');
  lastName = stdin.readLineSync();
  String? fullName;
  fullName = firstName! + " "+ lastName!;
  print(fullName);
  print(fullName.length);
  print("my full name is: $firstName $lastName");
}


