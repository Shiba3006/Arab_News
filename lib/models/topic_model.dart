class ArticleModel {
  final String? image;
  final String title;
  final String? content;

  ArticleModel(
      {required this.image, required this.title, required this.content});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      content: json['content'],
    );
  }
}
