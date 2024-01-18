class CommonUtils {
  static String? validateName(String value, String label) {
    final RegExp regExp = RegExp(r'^[a-zA-Z]+$');

    if (!regExp.hasMatch(value)) {
      return 'Please enter a valid $label name';
    }

    return null;
  }

  static String? validateEmail(String value) {
    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    return null;
  }

  static String? validateContactNumber(String value) {
    final RegExp contactNumberRegExp = RegExp(r'^[0-9]+$');

    if (!contactNumberRegExp.hasMatch(value)) {
      return 'Please enter a valid contact number';
    }

    return null;
  }

  static String? validateCity(String value) {
    final RegExp cityRegExp = (RegExp(r'^[a-zA-Z\s]+$'));

    if (!cityRegExp.hasMatch(value)) {
      return 'Please enter a valid city';
    }

    return null;
  }

  static String? validateCountry(String value) {
    final RegExp countryRegExp = RegExp(r'^[a-zA-Z\s]+$');

    if (value.isEmpty) {
      return 'Please enter a country';
    }

    if (!countryRegExp.hasMatch(value)) {
      return 'Please enter a valid country';
    }

    return null;
  }

  static String? validatePinCode(String value) {
    final RegExp pinCodeRegExp = RegExp(r'^[0-9]{6}$');

    if (!pinCodeRegExp.hasMatch(value)) {
      return 'Please enter a valid 6-digit PIN code';
    }

    return null;
  }
}
