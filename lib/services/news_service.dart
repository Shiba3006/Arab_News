import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/topic_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getArticles({
    required String country,
  }) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?apiKey=3752d63f5a39421c9a143f20a29dc608&q=$country&sortBy=relevancy&searchIn=title,description,content');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}

// https://newsapi.org/v2/everything?q=gaza%20OR%20sudan&apiKey=3752d63f5a39421c9a143f20a29dc608

//https://newsdata.io/api/1/news?apikey=pub_370110019de0b4ef261a94cab274db6e77a63&q=gaza OR sudan&language=ar
//https://newsdata.io/api/1/news?apikey=pub_370110019de0b4ef261a94cab274db6e77a63&q=YOUR_QUERY&size=15


// https://health.gov/myhealthfinder/api/v3/topicsearch.json?lang=en
