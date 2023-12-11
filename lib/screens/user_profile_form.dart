import 'package:flutter/material.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/custom_text_field.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class UserProfileForm extends StatefulWidget {
  const UserProfileForm({
    super.key,
  });

  @override
  State<UserProfileForm> createState() => _UserProfileFormState();
}

class _UserProfileFormState extends State<UserProfileForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: 3.5,
        width: MediaQuery.of(context).size.width * 0.55,
        height: MediaQuery.of(context).size.height * 0.65,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
      ),
      child: GSFormControl(
        formKey: _formKey,
        child: GSVStack(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            GSHStack(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const GSImage(
                  path: GSStringConstants.kImageUrl,
                  imageType: GSImageType.network,
                  borderRadius: GSBorderRadius.$full,
                  size: GSSizes.$sm,
                  fit: BoxFit.cover,
                ),
                GSButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, perform your actions here
                    }
                  },
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
                            ),
                          ),
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
            GSHStack(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextField(
                  labelText: "First Name",
                  maxWidth: MediaQuery.of(context).size.width * 0.21,
                  maxHeight: MediaQuery.of(context).size.width * 0.02,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  labelText: "Last Name",
                  maxWidth: MediaQuery.of(context).size.width * 0.21,
                  maxHeight: MediaQuery.of(context).size.width * 0.02,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextField(
              labelText: "Email",
              maxWidth: 555,
              maxHeight: 30,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an email address';
                }

                if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                    .hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextField(
              labelText: "Contact Number",
              maxWidth: MediaQuery.of(context).size.width * 0.55,
              maxHeight: MediaQuery.of(context).size.width * 0.02,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a contact number';
                }

                if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                  return 'Please enter a valid 10-digit contact number';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextField(
              labelText: "Address",
              maxWidth: MediaQuery.of(context).size.width * 0.55,
              maxHeight: MediaQuery.of(context).size.width * 0.02,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an address';
                }

                return null;
              },
            ),
            const SizedBox(
              height: 12,
            ),
            GSHStack(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextField(
                  labelText: "City",
                  maxWidth: MediaQuery.of(context).size.width * 0.21,
                  maxHeight: MediaQuery.of(context).size.width * 0.02,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a city';
                    }

                    if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                      return 'City should only contain letters';
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  labelText: "State",
                  maxWidth: MediaQuery.of(context).size.width * 0.21,
                  maxHeight: MediaQuery.of(context).size.width * 0.02,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a state';
                    }

                    if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                      return 'State should only contain letters';
                    }
                    return null;
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            GSHStack(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextField(
                  labelText: "Zip Code",
                  maxWidth: MediaQuery.of(context).size.width * 0.21,
                  maxHeight: MediaQuery.of(context).size.width * 0.02,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a 6-Digit Zip Code';
                    }

                    if (!RegExp(r'^\d{6}$').hasMatch(value)) {
                      return 'Please enter a valid 6-digit Zip Code';
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  labelText: "Country",
                  maxWidth: MediaQuery.of(context).size.width * 0.21,
                  maxHeight: MediaQuery.of(context).size.width * 0.02,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a country name';
                    }

                    if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                      return 'Country name should only contain letters and spaces';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
