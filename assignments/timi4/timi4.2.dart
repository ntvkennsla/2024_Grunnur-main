import 'dart:convert';
import 'dart:io';
void main(challenge2) {
  print(
      "Tell me a statement to repeat back to you. Enter 'quit' to end the program.");
  bool active = true;
  String? input;
  while (active) {
    input = stdin.readLineSync();
    if (input == 'quit') {
      active = false;
    }
    else {
      print(input);
    }
  }
}