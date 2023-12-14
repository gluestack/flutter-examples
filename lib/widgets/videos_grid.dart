import 'package:flutter/material.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/video_post_card.dart';

class VideosGrid extends StatefulWidget {
  const VideosGrid({super.key});

  @override
  State<VideosGrid> createState() => _VideosGridState();
}

class _VideosGridState extends State<VideosGrid> {
  late int crossAxisCount;
  @override
  Widget build(BuildContext context) {
    List<VideoPost> posts = List.generate(
      12,
      (index) => VideoPost(
        title: GSStringConstants.postTitles[index],
        imageUrl: GSStringConstants.imageUrls[index],
      ),
    );

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print(constraints.maxWidth);

        if (constraints.maxWidth < 450) {
          crossAxisCount = 2;
        } else if (constraints.maxWidth < 605) {
          crossAxisCount = 3;
        } else {
          crossAxisCount = 4;
        }

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
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
      },
    );
  }
}
