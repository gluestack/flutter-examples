import 'package:flutter/material.dart';
import 'package:gluestack_demo/screens/user_profile_content_screen.dart';
import 'package:gluestack_demo/screens/user_profile_form.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GSVStack(
          children: [
            // User Profile Top Bar

            const CustomTopBarWidget(
              profileImageUrl: GSStringConstants.kUserImageUrl,
              trailingIcon: Icons.notifications,
              backButtonText: 'Profile',
            ),

            Expanded(
              child: GSHStack(
                children: [
                  //  User Profile Side Drawer
                  const Flexible(
                    flex: 2,
                    child: CustomDrawerWidget(
                      profileImageUrl: GSStringConstants.kUserImageUrl,
                      userEmail: GSStringConstants.kUserEmail,
                      userName: GSStringConstants.kUserName,
                    ),
                  ),

                  //User Profile Main Content
                  const Flexible(
                    flex: 9,
                    child: UserProfileContentScreen(),
                  ),

                  //small screen UI
                  Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: GSBox(
                      style: GSStyle(
                        xs: GSStyle(isVisible: true),
                        sm: GSStyle(isVisible: true),
                        md: GSStyle(isVisible: false),
                        lg: GSStyle(isVisible: false),
                        color: const Color(0xFFF5F3FF),
                      ),
                      child: UserProfileForm(
                        formWidth: MediaQuery.of(context).size.width * 0.98,
                        formHeight: MediaQuery.of(context).size.width * 0.98,
                        formTextFieldWidth:
                            MediaQuery.of(context).size.width * 0.42,
                      ),
                    ),
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
