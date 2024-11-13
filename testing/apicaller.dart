import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main(){
  String API_URL = "https://api.themoviedb.org/3/search/movie?";
  String Query = "query=Guardians+of+the+galaxy&";
  String API_KEY = "api_key=302852b0524e0a01498712a56f6c4d81";
  fetchMovie(API_URL,Query,API_KEY);

}

Future<List<Movie>> fetchMovie(String Url,String Query, String APIKEY) async {
  final response = await http.get(Uri.parse(Url + Query + APIKEY));
  final jsonResponse = json.decode(response.body);
  List<Movie> movies = [];
  for (int i = 0; i < jsonResponse['results'].length; i++) {
    Movie movie = new Movie(title: jsonResponse['results'][i]['title'], releaseDate: jsonResponse['results'][i]['release_date'], tagline: jsonResponse['results'][i]['overview']);
    movies.add(movie);
  }
  for (int i = 0; i < movies.length; i++) {
    print(movies[i].title);
    print(movies[i].releaseDate);
    print(movies[i].tagline);
  }
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
}