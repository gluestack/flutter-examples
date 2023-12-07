import 'package:flutter/material.dart';
import 'package:gluestack_demo/screens/user_profile_form.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class UserProfileContentScreen extends StatelessWidget {
  const UserProfileContentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        padding: const EdgeInsets.only(top: 30),
        color: const Color(0xFFF5F3FF),
      ),
      child: const GSVStack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 140.0, bottom: 15),
                  child: GSHStack(
                    children: [
                      GSButtonIcon(
                        icon: Icons.arrow_back,
                        iconSize: GSSizes.$md,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      GSText(
                        text: "Profile",
                        size: GSSizes.$sm,
                      )
                    ],
                  ),
                ),
                UserProfileForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
