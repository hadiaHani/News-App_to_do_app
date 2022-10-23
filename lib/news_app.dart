import 'package:flutter/material.dart';
import 'package:news_app/pages/all_news_screen.dart';
import 'package:news_app/pages/favourite_news_wcreen.dart';

class NewsHomeScreen extends StatelessWidget {
  const NewsHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('News App'),
            bottom: const TabBar(tabs: [
              Tab(
                text: 'All News',
                icon: Icon(Icons.list),
              ),
              Tab(
                text: 'Favourite News',
                icon: Icon(Icons.favorite),
              )
            ]),
          ),
          body: const TabBarView(
              children: [AllNewsScreen(), FavouriteNewsScreen()])),
    );
  }
}
