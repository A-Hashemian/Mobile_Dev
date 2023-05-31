import 'package:flutter/material.dart';

class MyThemes{


static ThemeData themeData ({required bool isDarkTheme, required BuildContext context} ) {

  return isDarkTheme? ThemeData() : ThemeData();
}

  
}