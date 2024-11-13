import 'dart:math';

void main() {
  // Create two dice
  Dice myDice1 = Dice();
  Dice myDice2 = Dice();

  // Roll one dice and print the result
  print("Rolling one dice: ${myDice1.rollTheDice()}");

  // Roll two dice and check if they show the same number
  int result1 = myDice1.rollTheDice();
  int result2 = myDice2.rollTheDice();
  print("Teningur1: $result1 \nTeningur2: $result2");

  // Keep rolling two dice until both show the same number
  bool checker = true;
  int rollCount = 0;
  while (checker) {
    result1 = myDice1.rollTheDice();
    result2 = myDice2.rollTheDice();
    rollCount++;
    print("Teningur1: $result1 \nTeningur2: $result2");

    if (result1 == result2) {
      print("It took $rollCount rolls to get the same number!");
      checker = false;
    }
  }

  // Check how many times each number shows up in 100 rolls
  List<int> counts = List.filled(6, 0); // List to keep track of counts for numbers 1 to 6
  for (int i = 0; i < 100; i++) {
    int roll = myDice1.rollTheDice();
    counts[roll - 1]++; // Increment the count for the rolled number
  }

  // Print the results of how many times each number appeared
  for (int i = 0; i < counts.length; i++) {
    print("Number ${i + 1} appeared ${counts[i]} times.");
  }
}

class Dice {
  int sides;

  Dice({this.sides = 6});

  int rollTheDice() {
    var random = Random();
    return random.nextInt(sides) + 1;
  }
}
