import "package:ecommerce_app/utils/theme/custom_themes/appbar_theme.dart";
import "package:ecommerce_app/utils/theme/custom_themes/bottom_sheet_theme.dart";
import "package:ecommerce_app/utils/theme/custom_themes/checkbox_theme.dart";
import "package:ecommerce_app/utils/theme/custom_themes/chip_theme.dart";
import "package:ecommerce_app/utils/theme/custom_themes/elevated_button_theme.dart";
import "package:ecommerce_app/utils/theme/custom_themes/outlined_button_theme.dart";
import "package:ecommerce_app/utils/theme/custom_themes/text_field_theme.dart";
import "package:ecommerce_app/utils/theme/custom_themes/text_theme.dart";
import "package:flutter/material.dart";


class TAppTheme {
  TAppTheme._();

  
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: CTextTheme.lightTextTheme,
    chipTheme: CChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: CAppBarTheme.lightAppBarTheme,
    checkboxTheme: CCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: COutlineButtonTheme.lightOutlinedButtomTheme,
    inputDecorationTheme: CTextFieldTheme.lightInputDecorationTheme
  );


  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: CTextTheme.darkTextTheme,
    chipTheme: CChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: CAppBarTheme.darkAppBarTheme,
    checkboxTheme: CCheckboxTheme.darkCheckBoxTheme,
    bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: COutlineButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CTextFieldTheme.darkInputDecorationTheme,
  );
}
