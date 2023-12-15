import 'package:flutter/material.dart';
import 'package:gluestack_demo/screens/user/user_profile_content_screen.dart';
import 'package:gluestack_demo/screens/user/user_profile_form.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/custom_topbar_small_screen.dart';
import 'package:gluestack_demo/widgets/custom_topbar_widget.dart';
import 'package:gluestack_demo/widgets/user_profile_drawer.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

import '../../widgets/custom_drawer_widget.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: GSVStack(
          children: [
            // User Profile Top Bar

            const CustomTopBarWidget(
              profileImageUrl: GSStringConstants.kUserImageUrl,
              trailingIcon: Icons.notifications,
              backButtonText: GSStringConstants.kProfile,
            ),

            //small screen UI

            CustomTopBarSmallScreenWidget(
              backButtonText: GSStringConstants.kProfile,
              trailingIcon: Icons.notifications,
              onTrailingIconTap: () {
                scaffoldKey.currentState?.openDrawer();
              },
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
                        xs: GSStyle(
                          isVisible: true,
                        ),
                        sm: GSStyle(isVisible: true),
                        md: GSStyle(isVisible: false),
                        lg: GSStyle(isVisible: false),
                      ),
                      child: UserProfileForm(
                        formWidth: MediaQuery.of(context).size.width * 0.999,
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
      drawer: const UserProfileScreenDrawer(
        userProfileImage: GSStringConstants.kUserImageUrl,
        userEmail: GSStringConstants.kUserEmail,
        userName: GSStringConstants.kUserName,
      ),
    );
  }
}