import 'package:flutter/material.dart';
import 'package:news_app/data/dummy_data.dart';
import 'package:news_app/widgets/NewsWidget.dart';

class AllNewsScreen extends StatelessWidget {
  const AllNewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return NewsWidget(newsList[index]);
        });
  }
}
