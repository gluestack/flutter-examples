import '../../public.dart';

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
        bg: $GSColors.white,
        dark: GSStyle(
          bg: $GSColors.darkBlue100,
        ),
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
                    borderRadius: GSImageRadius.$full,
                    size: GSImageSizes.$sm,
                    fit: BoxFit.cover,
                  ),
                  GSButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    variant: GSButtonVariants.outline,
                    style: GSStyle(
                      dark: GSStyle(
                        borderColor: $GSColors.warmGray400,
                      ),
                    ),
                    size: GSButtonSizes.$xs,
                    child: GSHStack(
                      children: [
                        GSButtonIcon(
                          icon: Icons.edit,
                          style: GSStyle(
                            dark: GSStyle(
                              color: $GSColors.warmGray400,
                            ),
                          ),
                        ),
                        GSBox(
                          style: GSStyle(
                            padding: const EdgeInsets.only(left: 5),
                          ),
                          child: GSButtonText(
                            text: GSStringConstants.kEditProfile,
                            style: GSStyle(
                              textStyle: TextStyle(
                                color: $GSColors.primary300,
                              ),
                              dark: GSStyle(
                                textStyle: TextStyle(
                                  color: $GSColors.warmGray400,
                                ),
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
                  // SizedBox(
                  //   width: 20,
                  // ),
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
                maxWidth: MediaQuery.of(context).size.width * 0.95,
                maxHeight: MediaQuery.of(context).size.width * 0.02,
                validator: (value) => CommonUtils.validateEmail(value),
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                labelText: "Contact Number",
                maxWidth: MediaQuery.of(context).size.width * 0.95,
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
                maxWidth: MediaQuery.of(context).size.width * 0.95,
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
