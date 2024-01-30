import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/topic_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.country});
  final String country;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    future = NewsService(Dio()).getArticles(country: widget.country);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              atriclesModel: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
              child: Text('There is something wrong ....'),
            );
          } else {
            return const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}
