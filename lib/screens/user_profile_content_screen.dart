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
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.02),
        color: const Color(0xFFF5F3FF),
      ),
      child: GSVStack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.14, bottom: 8),
                //  bottom: MediaQuery.of(context).size.width * 0.1),
                child: const GSHStack(
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
              const UserProfileForm(),
            ],
          ),
        ],
      ),
    );
  }
}
