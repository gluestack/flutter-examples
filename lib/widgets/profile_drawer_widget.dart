import 'package:flutter/material.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/user_profile_side_drawer_tile.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class ProfileDrawerWidget extends StatelessWidget {
  const ProfileDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 30,
        ),
        const GSCenter(
          child: GSImage(
            path: GSStringConstants.kImageUrl,
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
            text: "Jane Doe",
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
            text: "janedoe2@mydomain.com",
            size: GSSizes.$xs,
            style: GSStyle(
              textStyle: const TextStyle(color: $GSColors.warmGray400),
            ),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        GSDivider(
          orientation: GSOrientations.vertical,
          style: GSStyle(
              color: $GSColors.warmGray400.withOpacity(0.15), height: 1.3),
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
    );
  }
}
