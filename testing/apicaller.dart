import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';


void main(){
  String QueryParameter = "multi";
  print("What would you like to search for?");
  print("1. Movie");
  print("2. Person");
  print("3. TV");
  String inputQuestion = stdin.readLineSync().toString();
  switch(inputQuestion) {
    case "1":
      QueryParameter = "movie";
        break;
    case "2":
      QueryParameter = "person";
      break;
    case "3":
      QueryParameter = "tv";
      break;
    default:
      QueryParameter = "multi";
  }

  print("Enter Name of $QueryParameter:");
  String input1 = stdin.readLineSync().toString();
  fetchData(input1,QueryParameter);
}

void fetchData(String query, String parameter) async {
  final String apiUrl = "https://api.themoviedb.org/3/search/$parameter";
  final String apiKey = "302852b0524e0a01498712a56f6c4d81";
  final url = Uri.parse('$apiUrl?query=$query&api_key=$apiKey');
  final response = await http.get(url);
  print(url);
  final jsonResponse = json.decode(response.body);
  switch(parameter) {
    case "movie":
      fetchMovie(jsonResponse);
      break;
    case "person":
      fetchActor(jsonResponse);
      break;
    case "3":
      print("Coming Soon");
      break;
    default:
      print("Coming Soon");
  }
}
void fetchMovie(dynamic jsonResponse){
  List<Movie> movies = [];
  for (int i = 0; i < jsonResponse['results'].length; i++) {
    Movie movie = new Movie(title: jsonResponse['results'][i]['title'], releaseDate: jsonResponse['results'][i]['release_date'], tagline: jsonResponse['results'][i]['overview']);
    movies.add(movie);
    print(movie.toString());
  }
}
void fetchActor(dynamic jsonResponse){
  List<Actor> actors = [];
  for (int i = 0; i < jsonResponse['results'].length; i++) {
    Actor actor = new Actor(name: jsonResponse['results'][i]['name'], gender: jsonResponse['results'][i]['gender'].toString(), known_for_department: jsonResponse['results'][i]['known_for_department']);
    actors.add(actor);
    print(actor.toString());
  }
}


class Movie {
  final String title;
  final String releaseDate;
  final String tagline;

  Movie({
    required this.title,
    required this.releaseDate,
    required this.tagline
});
  @override
  String toString() {
    return "${title} \n${releaseDate} \n${tagline}";
  }
}

class Actor {
  final String name;
  final String gender;
  final String known_for_department;

  Actor({
    required this.name,
    required this.gender,
    required this.known_for_department
  });
  @override
  String toString() {
    return "${name} \n${gender} \n${known_for_department}";
  }
}