import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int numberToGuess = random.nextInt(100) + 1;
  int? guess;
  int attempts = 0;

  print('Welcome to the Number Guessing Game!');
  print('I have selected a number between 1 and 100. Can you guess it?');

  //Here write a while loop that checks for guess and numberToGuess
  //Inside while loop use int.tryParse(stdin.readLineSync()!); and make it equal the guess
  //Add attempts with ++ or something similar
  //Use if and if else and else to print out the guess of the player
}