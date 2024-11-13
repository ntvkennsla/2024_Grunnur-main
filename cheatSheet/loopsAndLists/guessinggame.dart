import 'dart:io';
import 'dart:math';

void main() {
  Random random = new Random();
  int randomNumber = random.nextInt(10);
  bool isAppRunning = true;
  print("Guess the number:");
  print("Number is $randomNumber");
  int counter = 0;
  while(isAppRunning) {
  //2. Use While loop to let the user guess until he gets it correct.
  String guessInput = stdin.readLineSync().toString();
  int guess = int.parse(guessInput);
  if (guess == randomNumber) {
    print("You are correct sir");
    isAppRunning = false;
  } else {
    counter++;
    print("Guess again!");
    int difference = (guess-randomNumber).abs();
    print(difference);
    //Ef talan er Þú ert heitur
    if (difference <= 2) {
      print("Þú ert heitur");
    } else {
      print("Þú ert kaldur brr...");
    }
    print("Þú ert búinn að giska $counter oft!");
    //Ef ekki þú ert kaldur brrrr.....
  }
  //Bónus task: Count how many times he has gotten it incorrect.
  }
}