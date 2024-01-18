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
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: $GSFontSize.$xs,
            ),
          ),
        ),
        GSText(
          textAlign: TextAlign.center,
          text: title,
          style: GSStyle(
            dark: GSStyle(textStyle: TextStyle(color: $GSColors.warmGray300)),
            textStyle: TextStyle(
              fontSize: $GSFontSize.$2xs,
            ),
          ),
        ),
      ],
    );
  }
}
