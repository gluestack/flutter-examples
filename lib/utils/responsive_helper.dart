import 'package:flutter/widgets.dart';

class ResponsiveHelper {
  static bool isSmall(BuildContext context) =>
      MediaQuery.of(context).size.width <= 394;

  static bool isMedium(BuildContext context) =>
      MediaQuery.of(context).size.width >= 786;

  static bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width >= 992;
}
