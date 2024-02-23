import 'package:gluestack_demo/public.dart';

class ThemeProvider extends ChangeNotifier {
  GSThemeMode _themeMode = GSThemeMode.light;

  GSThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode =
        _themeMode == GSThemeMode.light ? GSThemeMode.dark : GSThemeMode.light;
    notifyListeners();
  }
}
