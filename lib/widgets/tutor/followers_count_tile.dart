import '../../public.dart';

class FollowersCountTile extends StatelessWidget {
  final String count;
  final String title;
  const FollowersCountTile({
    super.key,
    required this.count,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GSVStack(
      children: [
        GSText(
          textAlign: TextAlign.center,
          text: count,
          style: GSStyle(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ),
        GSText(
          textAlign: TextAlign.center,
          text: title,
          style: GSStyle(
            textStyle: const TextStyle(
              fontSize: 9,
            ),
          ),
        ),
      ],
    );
  }
}
