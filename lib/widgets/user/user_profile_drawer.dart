import '../../public.dart';

class UserProfileScreenDrawer extends StatelessWidget {
  final String userProfileImage;
  final String userName;
  final String userEmail;

  const UserProfileScreenDrawer({
    super.key,
    required this.userProfileImage,
    required this.userName,
    required this.userEmail,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      child: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          GSCenter(
            child: GSImage(
              path: userProfileImage,
              imageType: GSImageType.network,
              borderRadius: GSImageRadius.$full,
              size: GSImageSizes.$lg,
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
                textStyle: TextStyle(
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
              height: 1.3,
            ),
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
