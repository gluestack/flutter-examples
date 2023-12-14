import 'package:flutter/material.dart';
import 'package:gluestack_demo/widgets/user_profile_side_drawer_tile.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class CustomDrawerWidget extends StatelessWidget {
  final String profileImageUrl;
  final String userName;
  final String userEmail;
  const CustomDrawerWidget({
    super.key,
    required this.profileImageUrl,
    required this.userName,
    required this.userEmail,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        xs: GSStyle(
          isVisible: false,
        ),
        sm: GSStyle(
          isVisible: false,
        ),
        md: GSStyle(
          isVisible: true,
        ),
        lg: GSStyle(
          isVisible: true,
        ),
      ),
      child: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          GSCenter(
            child: GSImage(
              path: profileImageUrl,
              imageType: GSImageType.network,
              borderRadius: GSBorderRadius.$full,
              size: GSSizes.$lg,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GSCenter(
            child: GSText(
              text: userName,
              style: GSStyle(
                //fontWeight: FontWeight.w900,
                textStyle: const TextStyle(fontWeight: FontWeight.w900),
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          GSCenter(
            child: GSText(
              text: userEmail,
              size: GSSizes.$xs,
              style: GSStyle(
                textStyle: const TextStyle(
                  color: $GSColors.warmGray400,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          GSDivider(
            orientation: GSOrientations.vertical,
            style: GSStyle(
              color: $GSColors.warmGray400.withOpacity(0.15),
              height: 1.3,
            ),
          ),
          const UserProfileSideDrawerTile(
            icon: Icons.person,
            label: "Contacts",
          ),
          const UserProfileSideDrawerTile(
            icon: Icons.group,
            label: "Group",
          ),
          const UserProfileSideDrawerTile(
            icon: Icons.notifications,
            label: "Notification",
          ),
          const UserProfileSideDrawerTile(
            icon: Icons.square,
            label: "Orders",
          ),
          const UserProfileSideDrawerTile(
            icon: Icons.settings,
            label: "Settings",
          ),
          const UserProfileSideDrawerTile(
            icon: Icons.privacy_tip,
            label: "Privacy Policy",
          ),
          const UserProfileSideDrawerTile(
            icon: Icons.headphones,
            label: "Help & Support",
          ),
          const UserProfileSideDrawerTile(
            icon: Icons.share,
            label: "Refer & Earn",
          ),
          const SizedBox(
            height: 30,
          ),
          GSDivider(
            orientation: GSOrientations.vertical,
            style: GSStyle(
                color: $GSColors.warmGray400.withOpacity(0.15), height: 1.3),
          ),
          const UserProfileSideDrawerTile(
            icon: Icons.logout,
            label: "Logout",
          ),
        ],
      ),
    );
  }
}
