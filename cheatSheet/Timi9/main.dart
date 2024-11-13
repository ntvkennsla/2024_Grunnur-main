import 'dart:io';
import 'dart:math';

void main() {
  // Atlético Madrid players
  footballPlayer griezmann = footballPlayer(
    id: 1,
    firstName: "Antoine",
    lastName: "Griezmann",
    position: "ST",
    squadNumber: 7,
    bigChanceConvertion: 7
  );

  footballPlayer oblack = footballPlayer(
    id: 2,
    firstName: "Jan",
    lastName: "Oblak",
    position: "GK",
    squadNumber: 13,
    bigChanceConvertion: 1
  );

  footballPlayer koke = footballPlayer(
    id: 3,
    firstName: "Jorge",
    lastName: "Koke",
    position: "CM",
    squadNumber: 6,
    bigChanceConvertion: 4
  );

  footballPlayer felix = footballPlayer(
    id: 4,
    firstName: "João",
    lastName: "Félix",
    position: "FW",
    squadNumber: 7,
    bigChanceConvertion: 6
  );

  footballPlayer gimenez = footballPlayer(
    id: 5,
    firstName: "José María",
    lastName: "Giménez",
    position: "CB",
    squadNumber: 2,
    bigChanceConvertion: 2
  );

  footballPlayer hermoso = footballPlayer(
    id: 6,
    firstName: "Mario",
    lastName: "Hermoso",
    position: "CB",
    squadNumber: 22,
    bigChanceConvertion: 3
  );

  footballPlayer carrasco = footballPlayer(
    id: 7,
    firstName: "Yannick",
    lastName: "Carrasco",
    position: "LM",
    squadNumber: 21,
    bigChanceConvertion: 6
  );

  footballPlayer llorente = footballPlayer(
    id: 8,
    firstName: "Marcos",
    lastName: "Llorente",
    position: "RM",
    squadNumber: 14,
    bigChanceConvertion: 5
  );

  footballPlayer savic = footballPlayer(
    id: 9,
    firstName: "Stefan",
    lastName: "Savić",
    position: "CB",
    squadNumber: 15,
    bigChanceConvertion: 4
  );

  footballPlayer lemar = footballPlayer(
    id: 10,
    firstName: "Thomas",
    lastName: "Lemar",
    position: "CM",
    squadNumber: 11,
    bigChanceConvertion: 8
  );

  footballPlayer correa = footballPlayer(
    id: 11,
    firstName: "Ángel",
    lastName: "Correa",
    position: "FW",
    squadNumber: 10,
    bigChanceConvertion: 9
  );

  // Real Madrid players
  footballPlayer courtois = footballPlayer(
    id: 12,
    firstName: "Thibaut",
    lastName: "Courtois",
    position: "GK",
    squadNumber: 1,
    bigChanceConvertion: 1
  );

  footballPlayer carvajal = footballPlayer(
    id: 13,
    firstName: "Dani",
    lastName: "Carvajal",
    position: "RB",
    squadNumber: 2,
    bigChanceConvertion: 2
  );

  footballPlayer alaba = footballPlayer(
    id: 14,
    firstName: "David",
    lastName: "Alaba",
    position: "CB",
    squadNumber: 4,
    bigChanceConvertion: 5
  );

  footballPlayer rudiger = footballPlayer(
    id: 15,
    firstName: "Antonio",
    lastName: "Rüdiger",
    position: "CB",
    squadNumber: 22,
    bigChanceConvertion: 4
  );

  footballPlayer mendy = footballPlayer(
    id: 16,
    firstName: "Ferland",
    lastName: "Mendy",
    position: "LB",
    squadNumber: 23,
    bigChanceConvertion: 3
  );

  footballPlayer modric = footballPlayer(
    id: 17,
    firstName: "Luka",
    lastName: "Modrić",
    position: "CM",
    squadNumber: 10,
    bigChanceConvertion: 6
  );

  footballPlayer kroos = footballPlayer(
    id: 18,
    firstName: "Toni",
    lastName: "Kroos",
    position: "CM",
    squadNumber: 8,
    bigChanceConvertion: 7
  );

  footballPlayer valverde = footballPlayer(
    id: 19,
    firstName: "Federico",
    lastName: "Valverde",
    position: "CM",
    squadNumber: 15,
    bigChanceConvertion: 7
  );

  footballPlayer vinicius = footballPlayer(
    id: 20,
    firstName: "Vinícius",
    lastName: "Júnior",
    position: "LW",
    squadNumber: 7,
    bigChanceConvertion: 9
  );

  footballPlayer rodrygo = footballPlayer(
    id: 21,
    firstName: "Rodrygo",
    lastName: "Goes",
    position: "RW",
    squadNumber: 11,
    bigChanceConvertion: 9
  );

  footballPlayer benzema = footballPlayer(
    id: 22,
    firstName: "Karim",
    lastName: "Benzema",
    position: "ST",
    squadNumber: 9,
    bigChanceConvertion: 8
  );

  // Create the football clubs
  footballClub atleticoMadrid = footballClub(
    id: 1,
    name: "Atlético Madrid",
    league: "La Liga",
    country: "Spain",
  );

  footballClub realMadrid = footballClub(
    id: 2,
    name: "Real Madrid",
    league: "La Liga",
    country: "Spain",
  );

  // Add players to the clubs
  atleticoMadrid.players = [
    griezmann, oblack, koke, felix, gimenez, hermoso, carrasco, llorente, savic, lemar, correa
  ];

  realMadrid.players = [
    courtois, carvajal, alaba, rudiger, mendy, modric, kroos, valverde, vinicius, rodrygo, benzema
  ];

  footballGame game = new footballGame(homeTeam: atleticoMadrid, awayTeam: realMadrid);
  game.showLineup();
  int minute = 0;
  while (minute <= 90) {
    game.playGame(minute);
    minute++;
    sleep(Duration(milliseconds: 500));
  }
}

class footballPlayer {
  int id;
  String firstName;
  String lastName;
  int squadNumber;
  String position;
  int bigChanceConvertion;

  footballPlayer({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.position,
    required this.squadNumber,
    required this.bigChanceConvertion
  });
  String fullName() {
    return "${this.firstName} ${this.lastName}";
  }
}

class footballClub {
  int id;
  String name;
  String league;
  String country;
  List<footballPlayer> players = [];

  footballClub({
    required this.id,
    required this.name,
    required this.league,
    required this.country,
  });
  void showTeam() {
    print("The ${this.name} Lineup");

   for (footballPlayer fp in this.players) {
     print("${fp.squadNumber} - ${fp.firstName} ${fp.lastName}");
   }
   }
}

class footballGame {
  footballClub homeTeam;
  footballClub awayTeam;
  int homeScore;
  int awayScore;
  int time;

  footballGame({required this.homeTeam, required this.awayTeam, this.homeScore = 0,
  this.awayScore = 0, this.time = 0 });
  void showLineup() {
    homeTeam.showTeam();
    awayTeam.showTeam();
  }
  void showScore() {
    print("${this.time}: ${this.homeTeam.name} ${this.homeScore} - ${this.awayTeam.name} ${this.awayScore}");
  }
  void playGame(int minute) {
    this.time = minute;
    var random = Random();
    int randomNumber1 = random.nextInt(10);
    int randomNumber2 = random.nextInt(10);
    if(randomNumber1 == randomNumber2) {
      var randomTeam = random.nextBool();
      if(randomTeam == true) {
        bool didHeScore = bigChance(this.homeTeam.players);
        if(didHeScore) {
          this.homeScore++;
          print("MARK!!!!! ${this.homeTeam.name} Skoraði!");
          String PlayerName = whoScored(this.homeTeam.players);
          print("Það var auðvitað $PlayerName sem skoraði markið");
        }
      } else {
        bool didHeScore = bigChance(this.awayTeam.players);
        if(didHeScore) {

          this.awayScore++;
        print("MARK!!!!! ${this.awayTeam.name} Skoraði!");
        String PlayerName = whoScored(this.awayTeam.players);
        print("Það var auðvitað $PlayerName sem skoraði markið");
        }
      }
    }
    showScore();
  }
  String whoScored(List<footballPlayer> tempPlayers) {
    var random = Random();
    int randomNumber = random.nextInt(10);
    return tempPlayers[randomNumber].fullName();
  }
  bool bigChance(List<footballPlayer> tempPlayers) {
    var random = Random();
    int randomNumber = random.nextInt(10);
    int randomNumber2 = random.nextInt(10);
    print("${tempPlayers[randomNumber].fullName()} GOT A BIG CHANCE!");
    if(tempPlayers[randomNumber].bigChanceConvertion >= randomNumber2)
      {
        return true;
      } else {
      return false;
    }
  }
}