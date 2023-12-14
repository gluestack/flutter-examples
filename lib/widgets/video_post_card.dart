import 'package:flutter/material.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class VideoPostCard extends StatelessWidget {
  final VideoPost post;

  const VideoPostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        color: $GSColors.warmGray100,
        borderRadius: 5,
      ),
      child: GSVStack(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GSImage(
            path: post.imageUrl,
            imageType: GSImageType.network,
            fit: BoxFit.cover,
            style: GSStyle(height: 120),
          ),
          GSCenter(
            child: GSBox(
              style: GSStyle(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
              ),
              child: GSText(
                style: GSStyle(
                  textStyle: const TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                text: post.title,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VideoPost {
  final String title;
  final String imageUrl;

  VideoPost({required this.title, required this.imageUrl});
}
