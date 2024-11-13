import 'dart:io';
import 'dart:convert';
void main() {
  String forNafn = "Theodór";
  print("This is my name?: $forNafn");
  String? eftirNafn;
  print("Enter your Second name?");
  eftirNafn = stdin.readLineSync(encoding: Encoding.getByName('utf-8') ?? utf8);
  print("Your Second name is: $eftirNafn");
  String fulltNafn = "$forNafn + $eftirNafn";
  print("Yor full name is: $forNafn $eftirNafn");
}