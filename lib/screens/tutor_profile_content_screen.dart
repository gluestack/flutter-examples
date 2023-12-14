import 'package:flutter/material.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/custom_back_button_widget.dart';
import 'package:gluestack_demo/widgets/custom_tabbar.dart';
import 'package:gluestack_demo/widgets/followers_count_tile.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class TutorProfileContentScreen extends StatelessWidget {
  const TutorProfileContentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GSBox(
        style: GSStyle(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.02),
          sm: GSStyle(isVisible: false),
          md: GSStyle(isVisible: true),
          lg: GSStyle(isVisible: true),
          color: const Color(0xFFF5F3FF),
        ),
        child: GSVStack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.14, bottom: 8),
              //  bottom: MediaQuery.of(context).size.width * 0.1),
              child: const CustomBackButton(
                buttonText: "Tutor Profile",
              ),
            ),
            GSBox(
              style: GSStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: 3.5,
                width: MediaQuery.of(context).size.width * 0.60,
                height: MediaQuery.of(context).size.height * 0.8,
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                ),
              ),
              child: GSVStack(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  GSAvatar(
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
                  const SizedBox(
                    height: 10,
                  ),
                  GSText(
                    text: "Rax Martin",
                    style: GSStyle(
                      md: GSStyle(),
                      //fontWeight: FontWeight.w900,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  GSText(
                    text: "California",
                    style: GSStyle(
                      //fontWeight: FontWeight.w900,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 9,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GSText(
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
            ),
          ],
        ),
      ),
    );
  }
}
