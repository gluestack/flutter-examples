import 'package:flutter/material.dart';
import 'package:gluestack_demo/screens/user_profile_form.dart';
import 'package:gluestack_demo/widgets/custom_back_button_widget.dart';
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
        sm: GSStyle(isVisible: false),
        md: GSStyle(isVisible: true),
        lg: GSStyle(isVisible: true),
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
                child: const CustomBackButton(
                  buttonText: "Profile",
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
