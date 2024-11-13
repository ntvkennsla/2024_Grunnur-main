import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main(){
  fetchMovie("Guardians of the Galaxy");
}

Future<List<Movie>> fetchMovie(String query) async {
  final String apiUrl = "https://api.themoviedb.org/3/search/movie";
  final String apiKey = "302852b0524e0a01498712a56f6c4d81";
  final url = Uri.parse('$apiUrl?query=$query&api_key=$apiKey');
  final response = await http.get(url);

  final jsonResponse = json.decode(response.body);
  List<Movie> movies = [];
  for (int i = 0; i < jsonResponse['results'].length; i++) {
    Movie movie = new Movie(title: jsonResponse['results'][i]['title'], releaseDate: jsonResponse['results'][i]['release_date'], tagline: jsonResponse['results'][i]['overview']);
    movies.add(movie);
    print(movie.toString());
  }
  print(movies.length);

  return movies;
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