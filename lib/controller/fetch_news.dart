// https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=b125b5ac47f04bde89c83a496ba13962
import 'dart:convert';

import 'package:http/http.dart';

class FetchNews {
  static fetchNews() async {
    Response response = await get(
      Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=b125b5ac47f04bde89c83a496ba13962",
      ),
    );

    Map body_data = jsonDecode(response.body);

    print(body_data);
  }
}
