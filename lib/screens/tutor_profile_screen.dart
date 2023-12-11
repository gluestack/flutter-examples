import 'package:flutter/material.dart';
import 'package:gluestack_demo/screens/tutor_profile_content_screen.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/custom_drawer_widget.dart';
import 'package:gluestack_demo/widgets/custom_topbar_widget.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class TutorProfileScreen extends StatefulWidget {
  const TutorProfileScreen({Key? key}) : super(key: key);

  @override
  State<TutorProfileScreen> createState() => _TutorProfileScreenState();
}

class _TutorProfileScreenState extends State<TutorProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: GSVStack(
          children: [
            // Tutor Profile Top Bar
            CustomTopBarWidget(
              profileImageUrl: GSStringConstants.kTutorImageUrl,
              trailingIcon: Icons.nightlight_rounded,
            ),
            Expanded(
              child: GSHStack(
                children: [
                  //Tutor Profile Side Drawer
                  Flexible(
                    flex: 2,
                    child: CustomDrawerWidget(
                      profileImageUrl: GSStringConstants.kTutorImageUrl,
                      userEmail: 'raxmartin@mydomain.com',
                      userName: 'Rax Martin',
                    ),
                  ),

                  //User Profile Main Content
                  Flexible(
                    flex: 9,
                    child: TutorProfileContentScreen(),
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
