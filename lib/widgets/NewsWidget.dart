import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

// ignore: must_be_immutable
class NewsWidget extends StatefulWidget {
  NewsModel newsModel;
  Function? function;
  // ignore: use_key_in_widget_constructors
  NewsWidget(this.newsModel, [this.function]);

  @override
  State<NewsWidget> createState() => NewsWidgetState();
}

class NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          ListTile(
            trailing: InkWell(
              onTap: () {
                widget.newsModel.isLiked = !widget.newsModel.isLiked;
                setState(() {});
                if (widget.function != null) {
                  widget.function!();
                }
              },
              child: Icon(
                Icons.favorite,
                size: 40,
                color: widget.newsModel.isLiked ? Colors.red : Colors.grey,
              ),
            ),
            title: Text(widget.newsModel.author!),
            leading: CircleAvatar(
              child: Text(widget.newsModel.author![0].toUpperCase()),
            ),
          ),
          Container(
            height: 300,
            color: Colors.grey,
            child: Image.network(
              widget.newsModel.urlToImage!,
              fit: BoxFit.cover,
              errorBuilder: (x, y, z) {
                return const Center(
                    child: Icon(
                  Icons.broken_image,
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
