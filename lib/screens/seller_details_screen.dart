import 'package:flutter/material.dart';
import 'package:gluestack_demo/screens/seller_details_content_screen.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/custom_topbar_widget.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class SellerDetailsScreen extends StatefulWidget {
  const SellerDetailsScreen({Key? key}) : super(key: key);

  @override
  State<SellerDetailsScreen> createState() => _SellerDetailsScreenState();
}

class _SellerDetailsScreenState extends State<SellerDetailsScreen> {
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
              backButtonText: '',
            ),
            Expanded(
              child: GSHStack(
                children: [
                  //User Profile Main Content
                  Flexible(
                    flex: 9,
                    child: SellerDetailsContentScreen(),
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
