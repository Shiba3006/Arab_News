import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/topic_model.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key,required this.atriclesModel});
  final List<ArticleModel> atriclesModel;

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: atriclesModel.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: NewsTile(
                    articleModel: atriclesModel[index],
                  ),
                );
              },
            ),
          );
  }
}
