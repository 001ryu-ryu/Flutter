//https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=d6fb9d63179c40e9a89e540e341e3dd7

import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';

class FetchNews {
  static List sourcesId = [
    "abc-news",

    "bbc-news",
    "bbc-sport",

    "business-insider",

    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",

    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",

    "medical-news-today",

    "national-geographic",

    "news24",
    "new-scientist",

    "new-york-magazine",
    "next-big-future",

    "techcrunch",
    "techradar",

    "the-hindu",

    "the-wall-street-journal",

    "the-washington-times",
    "time",
    "usa-today"
  ];
  static fetchNews() async {
    final _random = new Random();
    var sourceId = sourcesId[_random.nextInt(sourcesId.length)];
    print(sourceId);

  Response response = await get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=$sourceId&apiKey=d6fb9d63179c40e9a89e540e341e3dd7"));

  Map body_data = jsonDecode(response.body);
  List articles = body_data["articles"];
  print(body_data);

  }
}