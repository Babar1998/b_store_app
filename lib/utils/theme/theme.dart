import 'package:flutter/material.dart';
import 'package:b_store_app/utils/theme/custom_themes/text_theme.dart';
import 'package:b_store_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:b_store_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:b_store_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:b_store_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:b_store_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:b_store_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:b_store_app/utils/theme/custom_themes/text_field_theme.dart';

class BAppTheme {
  BAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: BTextTheme.lightTextTheme,
    chipTheme: BChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: BAppBarTheme.lightAppBarTheme,
    checkboxTheme: BCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: BBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: BElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: BTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: BTextTheme.darkTextTheme,
    chipTheme: BChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: BAppBarTheme.darkAppBarTheme,
    checkboxTheme: BCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: BBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: BElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: BTextFormFieldTheme.darkInputDecorationTheme,
  );
}
