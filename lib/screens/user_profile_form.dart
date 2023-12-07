import 'package:flutter/material.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/custom_text_field.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class UserProfileForm extends StatelessWidget {
  const UserProfileForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: 3.5,
        width: 750,
        height: 400,
      ),
      child: GSVStack(
        children: [
          const SizedBox(
            height: 20,
          ),
          GSHStack(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const GSImage(
                path: GSStringConstants.kImageUrl,
                imageType: GSImageType.network,
                borderRadius: GSBorderRadius.$full,
                size: GSSizes.$sm,
                fit: BoxFit.cover,
              ),
              GSButton(
                onPressed: () {},
                variant: GSVariants.outline,
                //  action: GSActions.positive,
                size: GSSizes.$xs,
                style: GSStyle(
                    borderColor: $GSColors.purple800,
                    onHover: GSStyle(
                      color: $GSColors.purple800,
                    )),
                //size: GSSizes.$2xs,
                // Causes error ==> The following TypeErrorImpl was thrown building GSButton(dirty):Unexpected null value.
                child: GSHStack(
                  children: [
                    GSButtonIcon(
                      icon: Icons.edit,
                      style: GSStyle(color: $GSColors.purple800),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: GSButtonText(
                        text: 'Edit Profile',
                        style: GSStyle(
                            textStyle: const TextStyle(
                          color: $GSColors.purple800,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          GSBox(
            style: GSStyle(
              padding: const EdgeInsets.symmetric(horizontal: 80),
            ),
            child: const GSHStack(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextField(
                  labelText: "First Name",
                  maxWidth: 260,
                  maxHeight: 20,
                ),
                CustomTextField(
                  labelText: "Last Name",
                  maxWidth: 260,
                  maxHeight: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          GSBox(
            style: GSStyle(
              padding: const EdgeInsets.symmetric(horizontal: 80),
            ),
            child: const CustomTextField(
              labelText: "Email",
              maxWidth: 555,
              maxHeight: 30,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          GSBox(
            style: GSStyle(
              padding: const EdgeInsets.symmetric(horizontal: 80),
            ),
            child: const CustomTextField(
              labelText: "Contact Number",
              maxWidth: 555,
              maxHeight: 30,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          GSBox(
            style: GSStyle(
              padding: const EdgeInsets.symmetric(horizontal: 80),
            ),
            child: const CustomTextField(
              labelText: "Address",
              maxWidth: 555,
              maxHeight: 30,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          GSBox(
            style: GSStyle(
              padding: const EdgeInsets.symmetric(horizontal: 80),
            ),
            child: const GSHStack(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextField(
                  labelText: "City",
                  maxWidth: 260,
                  maxHeight: 30,
                ),
                CustomTextField(
                  labelText: "State",
                  maxWidth: 260,
                  maxHeight: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          GSBox(
            style: GSStyle(
              padding: const EdgeInsets.symmetric(horizontal: 80),
            ),
            child: const GSHStack(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextField(
                  labelText: "Zip Code",
                  maxWidth: 260,
                  maxHeight: 30,
                ),
                CustomTextField(
                  labelText: "Country",
                  maxWidth: 260,
                  maxHeight: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
