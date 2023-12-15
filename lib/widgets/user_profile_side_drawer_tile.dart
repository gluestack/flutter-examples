import 'package:flutter/material.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class UserProfileSideDrawerTile extends StatelessWidget {
  final IconData icon;
  final String label;
  const UserProfileSideDrawerTile({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding:
          EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.020),
      leading: GSIcon(
        icon: icon,
        size: GSSizes.$md,
      ),
      title: GSText(
        text: label,
        size: GSSizes.$xs,
      ),
      onTap: () {},
    );
  }
}
