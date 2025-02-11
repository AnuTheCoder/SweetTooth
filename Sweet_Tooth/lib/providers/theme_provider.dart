import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier{
  static const TTHEME_STATUS = "TTHEME_STATUS";
  bool _darkTheme = false;
  bool get getIsDarkTheme => _darkTheme;

  ThemeProvider(){
    getTheme();
  }
  setDarkTheme(bool value) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(TTHEME_STATUS, value);
    _darkTheme = value;
    notifyListeners();
  }
  Future<bool> getTheme()async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _darkTheme = prefs.getBool(TTHEME_STATUS)?? false;
    notifyListeners();
    return _darkTheme;
  }

}