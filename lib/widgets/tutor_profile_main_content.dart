import 'package:flutter/material.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/custom_tabbar.dart';
import 'package:gluestack_demo/widgets/followers_count_tile.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class TutorProfileMainContent extends StatelessWidget {
  final double? boxWidth;
  final double? boxHeight;
  const TutorProfileMainContent({
    super.key,
    this.boxWidth,
    this.boxHeight,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: 3.5,
        width: boxWidth ?? MediaQuery.of(context).size.width * 0.60,
        height: boxHeight ?? MediaQuery.of(context).size.height * 0.9,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
      ),
      child: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          GSCenter(
            child: GSAvatar(
              size: GSSizes.$md,
              style: GSStyle(bg: $GSColors.backgroundLight600),
              avatarBadge: GSAvatarBadge(
                style: GSStyle(
                  bg: $GSColors.success300,
                  dark: GSStyle(borderColor: $GSColors.backgroundDark900),
                ),
              ),
              avatarImage: const GSImage(
                imageType: GSImageType.network,
                path: GSStringConstants.kTutorImageUrl,
              ),
              fallBackText: const GSAvatarFallBackText(
                'Rax Martin',
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GSCenter(
            child: GSText(
              text: GSStringConstants.kTutorUserProfile[0],
              style: GSStyle(
                md: GSStyle(),
                //fontWeight: FontWeight.w900,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          GSCenter(
            child: GSText(
              text: GSStringConstants.kTutorUserProfile[1],
              style: GSStyle(
                //fontWeight: FontWeight.w900,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 9,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GSCenter(
            child: GSText(
              textAlign: TextAlign.center,
              text: GSStringConstants.kTutorProfileBio,
              style: GSStyle(
                //fontWeight: FontWeight.w900,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 9,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GSBox(
            style: GSStyle(
              width: 300,
            ),
            child: const GSHStack(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FollowersCountTile(
                  count: '46',
                  title: 'Talks',
                ),
                FollowersCountTile(
                  count: '46K',
                  title: 'Followers',
                ),
                FollowersCountTile(
                  count: '20M',
                  title: 'Watch Min',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomTabBar(),
        ],
      ),
    );
  }
}
