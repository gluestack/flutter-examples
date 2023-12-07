import 'package:flutter/material.dart';
import 'package:gluestack_demo/screens/user_profile_content_screen.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/profile_topbar_widget.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

import '../widgets/profile_drawer_widget.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: GSVStack(
          children: [
            // User Profile Top Bar
            ProfileTopBarWidget(
              profileImageUrl: GSStringConstants.kImageUrl,
              trailingIcon: Icons.notifications,
            ),
            Expanded(
              child: GSHStack(
                children: [
                  //  User Profile Side Drawer
                  Flexible(
                    flex: 2,
                    child: ProfileDrawerWidget(),
                  ),

                  //User Profile Main Content
                  Flexible(
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
