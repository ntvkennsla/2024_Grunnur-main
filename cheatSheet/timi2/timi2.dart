import 'dart:io';

void main() {
  String? firstName = "hjalti unnar";
  print(firstName);
  print("Enter your name?");
  firstName = stdin.readLineSync();
  print("your name is: $firstName");
}
