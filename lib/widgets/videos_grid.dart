import 'package:flutter/material.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/video_post_card.dart';

class VideosGrid extends StatelessWidget {
  const VideosGrid({super.key});

  @override
  Widget build(BuildContext context) {
    List<VideoPost> posts = List.generate(
      12,
      (index) => VideoPost(
        title: GSStringConstants.postTitles[index],
        imageUrl: GSStringConstants.imageUrls[index],
      ),
    );

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
      ),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return VideoPostCard(
          post: posts[index],
        );
      },
    );
  }
}
