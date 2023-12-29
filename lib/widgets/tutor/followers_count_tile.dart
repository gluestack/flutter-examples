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
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: Theme.of(context).brightness == Brightness.dark
                  ? $GSColors.white
                  : null,
            ),
          ),
        ),
        GSText(
          textAlign: TextAlign.center,
          text: title,
          style: GSStyle(
            textStyle: TextStyle(
              fontSize: 9,
              color: Theme.of(context).brightness == Brightness.dark
                  ? $GSColors.warmGray300
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
