import 'package:estacao_inteligente/data/comment_feed_data.dart';
import 'package:estacao_inteligente/module/comunity/subpages/feed/widgets/feed_item.dart';
import 'package:estacao_inteligente/shared/model/comment_model.dart';
import 'package:flutter/material.dart';

class FeedTab extends StatefulWidget {
  const FeedTab({Key? key}) : super(key: key);

  @override
  _FeedTabState createState() => _FeedTabState();
}

class _FeedTabState extends State<FeedTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: CommentFeedData.length,
        itemBuilder: (BuildContext context, int index) {
          final CommentModel comment = CommentFeedData[index];
          return FeedItem(comment: comment);
        },
      ),
    );
  }
}
