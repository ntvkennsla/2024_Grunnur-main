import 'dart:io';

import 'utilFunctions.dart';

void main(){

  //Calculate rectangle
  print("Calculate area of a rectangle with two numbers:");
  String? input1 = stdin.readLineSync();
  String? input2 = stdin.readLineSync();

  double number1 = double.parse(input1!);
  double number2 =double.parse(input2!);

  double rectangleSum = rectangle(number1, number2);
  print("Area of a rectangle:");
  print(rectangleSum);

  calculateAll(number1, number2);

}