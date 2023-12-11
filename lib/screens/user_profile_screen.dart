import 'package:flutter/material.dart';
import 'package:gluestack_demo/screens/user_profile_content_screen.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/custom_topbar_widget.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

import '../widgets/custom_drawer_widget.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  bool isWeb(BuildContext context) => MediaQuery.of(context).size.width >= 700;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 700;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GSVStack(
          children: [
            // User Profile Top Bar

            const CustomTopBarWidget(
              profileImageUrl: GSStringConstants.kImageUrl,
              trailingIcon: Icons.notifications,
            ),
            Expanded(
              child: GSHStack(
                children: [
                  //  User Profile Side Drawer
                  if (isWeb(context))
                    const Flexible(
                      flex: 2,
                      child: CustomDrawerWidget(
                        profileImageUrl: GSStringConstants.kImageUrl,
                        userEmail: 'janedoe@@mydomain.com',
                        userName: 'Jane Doe',
                      ),
                    ),

                  //User Profile Main Content
                  const Flexible(
                    flex: 9,
                    child: UserProfileContentScreen(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
