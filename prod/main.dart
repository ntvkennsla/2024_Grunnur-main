import 'dart:io';

void main(List<String> arguments) {
  print('Hello world!');
  print('What is your name?');
  String? name = stdin.readLineSync();
  print('Hello, $name!');
}
