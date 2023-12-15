import 'package:flutter/material.dart';
import 'package:gluestack_demo/screens/user/user_profile_form.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/custom_back_button_widget.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class UserProfileContentScreen extends StatelessWidget {
  const UserProfileContentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: GSBox(
        style: GSStyle(
          height: double.infinity,
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.02),
          sm: GSStyle(isVisible: false),
          md: GSStyle(isVisible: true),
          lg: GSStyle(isVisible: true),
          color: Theme.of(context).brightness == Brightness.dark
              ? const Color(0xFF374151)
              : const Color(0xFFF5F3FF),
        ),
        child: SingleChildScrollView(
          child: GSVStack(
            children: [
              GSBox(
                style: GSStyle(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.14,
                      bottom: 8),
                ),
                child: const CustomBackButton(
                  buttonText: GSStringConstants.kProfile,
                ),
              ),
              const UserProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
