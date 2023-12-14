import 'package:flutter/material.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/custom_back_button_widget.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

import '../widgets/tutor_profile_main_content.dart';

class TutorProfileContentScreen extends StatelessWidget {
  const TutorProfileContentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: GSBox(
        style: GSStyle(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.02),
          sm: GSStyle(isVisible: false),
          md: GSStyle(isVisible: true),
          lg: GSStyle(isVisible: true),
          color: const Color(0xFFF5F3FF),
        ),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: GSVStack(
            children: [
              GSBox(
                style: GSStyle(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.11,
                      bottom: 8),
                ),
                child: CustomBackButton(
                  buttonText: GSStringConstants.kTutorProfile,
                  iconColor: $GSColors.black,
                  buttonTextStyle: TextStyle(
                    color: $GSColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const TutorProfileMainContent(),
            ],
          ),
        ),
      ),
    );
  }
}
