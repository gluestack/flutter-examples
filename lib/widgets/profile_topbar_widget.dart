import 'package:flutter/material.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class ProfileTopBarWidget extends StatelessWidget {
  final String profileImageUrl;
  final IconData trailingIcon;
  const ProfileTopBarWidget({
    super.key,
    required this.profileImageUrl,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          height: 60,
          borderColor: $GSColors.warmGray300),
      child: GSHStack(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GSHStack(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // GS Icon doesn't have any onPressed function
              // Not clear with the "opticalsize and "grade" property
              const GSIcon(
                icon: Icons.menu,
                size: GSSizes.$sm,
              ),

              const GSImage(
                path: GSStringConstants.kNativeBaseLogo,
                imageType: GSImageType.network,
                size: GSSizes.$xl,
                fit: BoxFit.fitWidth,
              ),

              GSBox(
                style: GSStyle(
                    borderWidth: 1.5,
                    borderRadius: 2.5,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    height: 20,
                    width: 62,
                    borderColor: $GSColors.warmGray500),
                child: GSHStack(
                  children: [
                    GSText(
                      text: 'Startup',
                      style: GSStyle(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w900,
                      )),
                    ),
                    const GSIcon(
                      icon: Icons.add,
                      size: GSSizes.$xs,
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GSHStack(
              children: [
                GSIcon(
                  icon: trailingIcon,
                  size: GSSizes.$lg,
                  style: GSStyle(color: $GSColors.warmGray400),
                ),
                const SizedBox(
                  width: 15,
                ),
                GSImage(
                  path: profileImageUrl,
                  imageType: GSImageType.network,
                  borderRadius: GSBorderRadius.$full,
                  size: GSSizes.$2xs,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
