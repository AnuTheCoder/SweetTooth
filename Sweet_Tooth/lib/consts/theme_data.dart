import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class Styles{
  static ThemeData themeData({required bool isDarkTheme,required BuildContext context}){
    return ThemeData(
        scaffoldBackgroundColor: isDarkTheme
            ? AppColors.darkScaffoldColor
            : AppColors.lightScaffoldColor,
        cardColor: isDarkTheme
            ?const Color.fromARGB(255, 13, 6, 37)
            :AppColors.lightCardColor,
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,

      // canvasColor: isDarkTheme
      //     ? AppColors.darkScaffoldColor
      //     : AppColors.lightScaffoldColor, -> BottomNavigation bar color

      drawerTheme: DrawerThemeData(
        backgroundColor: isDarkTheme
            ? AppColors.darkScaffoldColor
            : AppColors.lightScaffoldColor,
      ),
        appBarTheme: AppBarTheme(
            backgroundColor: isDarkTheme
                ? AppColors.darkScaffoldColor
                : AppColors.lightScaffoldColor,
            elevation: 10,
            titleTextStyle: TextStyle(
                color: isDarkTheme ? Colors.white : Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold
            )
        ),

      dividerTheme: DividerThemeData(
        color: isDarkTheme ? Colors.white : Colors.black,
      )
    );
  }
}