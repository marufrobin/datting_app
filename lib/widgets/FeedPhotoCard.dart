import 'package:flutter/material.dart';
import '../model/model_data.dart';

class FeedPhotoCard extends StatelessWidget {
  const FeedPhotoCard({
    Key? key,
    required this.feedItem,
  }) : super(key: key);

  final FeedItem feedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 4,
                blurRadius: 8,
                offset: const Offset(0, 3))
          ],
          image: DecorationImage(
              image: AssetImage(feedItem.img), fit: BoxFit.cover)
          // color: Colors.cyanAccent,
          ),
    );
  }
}
