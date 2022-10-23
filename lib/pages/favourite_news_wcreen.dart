import 'package:flutter/material.dart';
import 'package:news_app/data/dummy_data.dart';
import 'package:news_app/widgets/NewsWidget.dart';

class FavouriteNewsScreen extends StatefulWidget {
  const FavouriteNewsScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteNewsScreen> createState() => _FavouriteNewsScreenState();
}

class _FavouriteNewsScreenState extends State<FavouriteNewsScreen> {
  rebuildFavouritePage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: newsList.where((element) => element.isLiked).length,
        itemBuilder: (context, index) {
          return NewsWidget(
              newsList.where((element) => element.isLiked).toList()[index],
              rebuildFavouritePage);
        });
  }
}
