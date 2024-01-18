import '../../public.dart';

class VideoPostCard extends StatelessWidget {
  final VideoPost post;

  const VideoPostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        height: 200,
        bg: $GSColors.warmGray100,
        dark: GSStyle(
          bg: $GSColors.darkBlue50,
        ),
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
                padding: EdgeInsets.only(
                  top: $GSSpace.$2,
                ),
              ),
              child: GSText(
                style: GSStyle(
                  textStyle: TextStyle(
                    fontSize: $GSFontSize.$xs,
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
