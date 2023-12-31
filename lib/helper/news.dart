import 'dart:convert';

import 'package:seko_haberler/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  late List<ArticleModel> news = [];
  late ArticleModel articleModel;

  Future<void> getNews() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=88ca8717672b41e4a7fee0ffd383b511";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel article = ArticleModel(
            title: element['title'] ?? "",
            author: element['author'] ?? "",
            description: element['description'] ?? "",
            urlToImage: element['urlToImage'] ?? "",
            content: element["content"] ?? "",
            articleUrl: element["url"] ?? "",
          );
          news.add(article);
        }
      });
    }
  }
}
