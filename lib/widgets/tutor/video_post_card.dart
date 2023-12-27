import '../../public.dart';

class VideoPostCard extends StatelessWidget {
  final VideoPost post;

  const VideoPostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        height: 200,
        bg: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF374151)
            : $GSColors.warmGray100,
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
                  top: 8,
                ),
              ),
              child: GSText(
                style: GSStyle(
                  textStyle: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? $GSColors.warmGray300
                        : null,
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
