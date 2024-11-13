import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int numberToGuess = random.nextInt(100) + 1;
  int? guess;
  int attempts = 0;

  print('Welcome to the Number Guessing Game!');
  print('I have selected a number between 1 and 100. Can you guess it?');

  while (guess != numberToGuess) {
    print('Enter your guess:');
    guess = int.tryParse(stdin.readLineSync()!);
    attempts++;

    if (guess == null) {
      print('Please enter a valid number.');
    } else if (guess < numberToGuess) {
      print('Too low! Try again.');
    } else if (guess > numberToGuess) {
      print('Too high! Try again.');
    } else {
      print('Congratulations! You guessed the number in $attempts attempts.');
    }
  }
}