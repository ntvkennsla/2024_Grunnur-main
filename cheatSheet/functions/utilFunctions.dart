import 'dart:math';

double rectangle(double a, double b){
  double sum = a * b;
  return sum;
}

double circle(double radius){
  double sum = pi * pow(radius, 2);
  return sum;
}

calculateAll(double a, double b){
  double rec = rectangle(a,b);
  double cir = circle(a);
  print("rectangle:");
  print(rec);
  print("circle");
  print(cir);
}