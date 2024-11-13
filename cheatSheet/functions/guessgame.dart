import 'dart:io';
import 'dart:math';


// Setjum variables hérna fyrir utan svo öll functionin okkar geti notað þau, án þess að copy pastea þeim nokkrum sinnum. virkaði ekki alveg eins og ég var að vonast eftir.
// var random = Random();
// int numberToGuess = random.nextInt(100) + 1;
// int? guess;
// int attempts = 0;
void main() {
  print('Welcome to the Number Guessing Game!');
  print('Choose your difficulty!');
  print("1. Easy Difficulty: Unlimited attempts with helpful hints after each guess.");
  print("2. Medium Difficulty: 20 attempts, and you still get hints to guide you.");
  print("3. Hard Difficulty: 10 attempts, but no hints – it's all up to you!");
  print("4. Extreme Difficulty: One shot, no hints. This Difficulty is not for the faint of heart!");
  print("5. Exit Game");

  String? difficultyInput = stdin.readLineSync();

  if(difficultyInput == "1") {
    // resetGame();
    easy();
  } else if (difficultyInput == "2") {
    // resetGame();
    medium();
  } else if (difficultyInput == "3") {
    // resetGame();
    hard();
  } else if (difficultyInput == "4") {
    // resetGame();
    extreme();
  } else if (difficultyInput == "5") {
    exit(0);
  }
}

// Ég ákvað að halda þessu hérna bara til að sýna að ég reyndi að nota global variables fyrst en gafst síðan upp á því
// leikurinn resettaðist aldrei almennilega
// void resetGame() {
//   numberToGuess = random.nextInt(100) + 1;
//   guess = null;
//   attempts = 0;
// }

void easy () {
  var random = Random();
  int numberToGuess = random.nextInt(100) + 1;
  int? guess;
  int attempts = 0;
  print("You have chosen the Easy Difficulty, have fun!");
  print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
  print('I have selected a number between 1 and 100. Can you guess it?');
  while (true) {
    String? userInput = stdin.readLineSync();
    guess = userInput != null ? int.tryParse(userInput) : null;
    attempts++;

    if (guess != numberToGuess) {
      print("This is attempt number $attempts and your guess '$guess' is not the right number try again!");
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      if (numberToGuess > guess!) {
        print("The number I picked is greater than '$guess'");
      } else if (numberToGuess < guess!) {
        print("The number I picked is less than '$guess'");
      }

    } else {
      print("You guessed the right number!! which was '$guess' after $attempts attempts");
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      playAgain();
    }
  }
}

void medium () {
  var random = Random();
  int numberToGuess = random.nextInt(100) + 1;
  int? guess;
  int attempts = 0;
  print("You have chosen the Medium Difficulty. remember you only have 20 attempts! Good luck!");
  print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
  print('I have selected a number between 1 and 100. Can you guess it?');
  while (attempts <= 20) {
    if (attempts == 17) {
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      print("You have 3 guesses left!");
    }
    if (attempts == 19) {
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      print("This is your last guess! Make it count!");
    }
    String? userInput = stdin.readLineSync();
    guess = userInput != null ? int.tryParse(userInput) : null;
    if (guess == null || guess! < 1 || guess! > 100) {
      print("Invalid input! please enter a number between 1 and 100 !");
      continue;
    }
    attempts++;
    if (attempts == 20 && guess != numberToGuess) {
      print("This was your last attempt sorry '$guess' was not the right number... better luck next time!");
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      playAgain();
    }

    if (attempts < 20 && guess != numberToGuess) {
      print("This is attempt number $attempts and your guess '$guess' is not the right number try again!");
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      if (numberToGuess > guess!) {
        print("The number I picked is greater than '$guess'");
      } else if (numberToGuess < guess!) {
        print("The number I picked is less than '$guess'");
      }
    }
    if(guess == numberToGuess) {
      if (attempts == 20) {
        print("'$guess' is the right number! Wow you guessed the right number on your last attempt!! congrats.");
        print("Now try out a more challenging mode if you dare");
        print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        playAgain();
      } else {
        print("You guessed the right number!! which was '$guess' after $attempts attempts");
        print("Now try out a more challenging mode if you dare");
        print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        playAgain();
      }
    }
  }
}
void hard () {
  var random = Random();
  int numberToGuess = random.nextInt(100) + 1;
  int? guess;
  int attempts = 0;
  print("You have chosen the Hard Difficulty, you have 10 guesses and no hints this time! sorry not sorry..");
  print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
  print('I have selected a number between 1 and 100. Can you guess it?');
  while (attempts <= 10) {
    if (attempts == 7) {
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      print("You have 3 guesses left!");
    }
    if (attempts == 9) {
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      print("This is your last guess! Make it count!");
    }
    String? userInput = stdin.readLineSync();
    guess = userInput != null ? int.tryParse(userInput) : null;
    if (guess == null || guess! < 1 || guess! > 100) {
      print("Invalid input! please enter a number between 1 and 100 !");
      continue;
    }
    attempts++;
    if (attempts == 10 && guess != numberToGuess) {
      print("This is your last attempt sorry '$guess' was not the right number... better luck next time!");
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      playAgain();
    }

    if (attempts < 10 && guess != numberToGuess) {
      print("This is attempt number $attempts and your guess '$guess' is not the right number try again!");
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
    }
    if(guess == numberToGuess) {
      if (attempts == 10) {
        print("'$guess' is the right number! Wow you guessed the right number on your last attempt!! congrats.");
        print("Now try out the Extreme Mode if you dare");
        print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        playAgain();
      } else {
        print("You guessed the right number!! which was '$guess' after $attempts attempts");
        print("Now try out the Extreme Mode if you dare");
        print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        playAgain();
      }
    }
  }
}

void extreme () {
  var random = Random();
  int numberToGuess = random.nextInt(100) + 1;
  int? guess;
  int attempts = 0;
  print("You have chosen the Extreme Difficulty, You have one attempt! You are really gonna be needing luck on your side for this one!");
  print("I believe in you... not");
  print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
  print('I have selected a number between 1 and 100. Can you guess it?');
  while (attempts < 2) {
    String? userInput = stdin.readLineSync();
    guess = userInput != null ? int.tryParse(userInput) : null;
    attempts++;

    if (guess == numberToGuess) {
      print("Incredible! You actually guessed the number, which was '$guess'.");
      print("You are officially the first person to beat this game in the Extreme Difficulty!");
      print("You have truly mastered the art of guessing");
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      playAgain();
    } else {
      print("Yeee.... this is pretty much impossible, I respect the effort, but luck wasn’t on your side this time!");
      print("If you were curious, your guess was '$guess' and the number you needed to guess was '$numberToGuess'");
      print("-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
      playAgain();
    }


  }
}

// Lætur þig geta valið hvort þú viljir spila aftur eða ekki
void playAgain() {
  print("Would you like to play again ? if so type in 'yes' else type in 'no'");
  bool playAgain = true;
  while (playAgain) {
    String? yesNo = stdin.readLineSync();

    if(yesNo == "yes" || yesNo == "Yes") {
      restartGame();
      break;
    } else if (yesNo == "no" || yesNo == "No"){
      exit(0);
    } else {
      print("Invalid input, type 'yes' to play again or 'no' to exit the game");
    }
  }

}


// Notum þetta fyrir þá sem eru búnir að spila allavega einu sinni og vilja spila aftur
void restartGame() {
  print("Welcome back!");
  print("Pick a difficulty that suits you. Have fun!");
  print("1. Easy Difficulty: Unlimited attempts with helpful hints after each guess.");
  print("2. Medium Difficulty: 20 attempts, and you still get hints to guide you.");
  print("3. Hard Difficulty: 10 attempts, but no hints – it's all up to you!");
  print("4. Extreme Difficulty: One shot, no hints. This Difficulty is not for the faint of heart!");
  print("5. Exit Game");

  String? difficultyInput = stdin.readLineSync();

  if(difficultyInput == "1") {
    easy();
  } else if (difficultyInput == "2") {
    medium();
  } else if (difficultyInput == "3") {
    hard();
  } else if (difficultyInput == "4") {
    extreme();
  } else if (difficultyInput == "5") {
    exit(0);
  }
}