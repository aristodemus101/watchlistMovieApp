import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import 'package:watchlistrial/model/item_model.dart';


class MovieApiProvider {
  Client client = Client();
  final _apiKey = '75a7d481a51a5f8d10e59c0db0fa52a0';

  Future<ItemModel> fetchMovieList() async {
    final response = await client.get(Uri.parse("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey"));
    print(response.body.toString());
    if (response.statusCode == 200) {

      return ItemModel.fromJson(json.decode(response.body));
    } else {

      throw Exception('Failed to load post');
    }
  }
}