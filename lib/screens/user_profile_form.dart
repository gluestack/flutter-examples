import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gluestack_demo/utils/common_utils.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/widgets/custom_text_field.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class UserProfileForm extends StatefulWidget {
  final double? formWidth;
  final double? formHeight;
  final double? formTextFieldWidth;
  final double? formTextFieldHeight;
  const UserProfileForm({
    super.key,
    this.formWidth,
    this.formHeight,
    this.formTextFieldWidth,
    this.formTextFieldHeight,
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
        width: widget.formWidth ?? MediaQuery.of(context).size.width * 0.55,
        height: widget.formHeight ?? MediaQuery.of(context).size.height * 0.70,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
      ),
      child: SingleChildScrollView(
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
                    path: GSStringConstants.kUserImageUrl,
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
                      borderColor: Theme.of(context).colorScheme.primary,
                      onHover: GSStyle(
                        borderColor: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    //size: GSSizes.$2xs,
                    // Causes error ==> The following TypeErrorImpl was thrown building GSButton(dirty):Unexpected null value.
                    child: GSHStack(
                      children: [
                        GSButtonIcon(
                          icon: Icons.edit,
                          style: GSStyle(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: GSButtonText(
                            text: 'Edit Profile',
                            style: GSStyle(
                              textStyle: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
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
                    maxWidth: widget.formTextFieldWidth ??
                        MediaQuery.of(context).size.width * 0.21,
                    maxHeight: MediaQuery.of(context).size.width * 0.02,
                    validator: (value) =>
                        CommonUtils.validateName(value, 'first'),
                  ),
                  CustomTextField(
                    labelText: "Last Name",
                    maxWidth: widget.formTextFieldWidth ??
                        MediaQuery.of(context).size.width * 0.21,
                    maxHeight: MediaQuery.of(context).size.width * 0.02,
                    validator: (value) =>
                        CommonUtils.validateName(value, 'last'),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                labelText: "Email",
                maxWidth: MediaQuery.of(context).size.width * 0.55,
                maxHeight: MediaQuery.of(context).size.width * 0.02,
                validator: (value) => CommonUtils.validateEmail(value),
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                labelText: "Contact Number",
                maxWidth: MediaQuery.of(context).size.width * 0.55,
                maxHeight: MediaQuery.of(context).size.width * 0.02,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  LengthLimitingTextInputFormatter(10),
                ],
                validator: (value) => CommonUtils.validateContactNumber(value),
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
                    maxWidth: widget.formTextFieldWidth ??
                        MediaQuery.of(context).size.width * 0.21,
                    maxHeight: MediaQuery.of(context).size.width * 0.02,
                    validator: (value) => CommonUtils.validateCity(value),
                  ),
                  CustomTextField(
                    labelText: "State",
                    maxWidth: widget.formTextFieldWidth ??
                        MediaQuery.of(context).size.width * 0.21,
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
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      LengthLimitingTextInputFormatter(6),
                    ],
                    maxWidth: widget.formTextFieldWidth ??
                        MediaQuery.of(context).size.width * 0.21,
                    maxHeight: MediaQuery.of(context).size.width * 0.02,
                    validator: (value) => CommonUtils.validatePinCode(value),
                  ),
                  CustomTextField(
                    labelText: "Country",
                    maxWidth: widget.formTextFieldWidth ??
                        MediaQuery.of(context).size.width * 0.21,
                    maxHeight: MediaQuery.of(context).size.width * 0.02,
                    validator: (value) => CommonUtils.validateCountry(value),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
