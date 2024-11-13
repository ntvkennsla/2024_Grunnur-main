import 'dart:core';
import 'dart:io';

void main() {
 double? calculate(double num1, double num2, String operator) {
  try{
    switch(operator) {
      case '+':
        return num1 + num2;
      case '-':
        return num1 - num2;
      case '*':
        return num1 * num2;
      case '/':
        return num1 / num2;
      default:
        print('Unknown operator');
        return null;
    }
  }
  catch(e){
    print("Caught an except: $e");
    return null;
  }

 }

 print(calculate(100, 0, '/'));
}