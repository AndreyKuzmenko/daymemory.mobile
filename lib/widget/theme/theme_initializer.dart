import 'package:daymemory/configuration/settings/configuration_settings.dart';
import 'package:daymemory/widget/theme/theme_color_options.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';
import 'package:flutter/material.dart';

abstract class ITheme {
  ThemeData getTheme();
}

class DefaultThemeInitializer implements ITheme {
  final ConfigurationSettings settings;
  final ThemeColorOptions themeColorOptions;
  final Brightness brightness;

  DefaultThemeInitializer({required this.settings, required this.themeColorOptions, required this.brightness});

  @override
  ThemeData getTheme() {
    return ThemeData(
      fontFamily: settings.defaultFont,
      brightness: brightness,
      //Progress indicator color
      canvasColor: themeColorOptions.cardColor,
      // cupertinoOverrideTheme: CupertinoThemeData(

      // ),
      extensions: <ThemeExtension<dynamic>>[
        ThemeColors(
          accentColor: themeColorOptions.accentColor,
          textPrimaryColor: themeColorOptions.textPrimaryColor,
          textSecondaryColor: themeColorOptions.textSecondaryColor,
          buttonTextColor: themeColorOptions.buttonTextColor,
          errorColor: themeColorOptions.errorColor,
          backgroundPrimaryColor: themeColorOptions.backgroundPrimaryColor,
          backgroundSecondaryColor: themeColorOptions.backgroundSecondaryColor,
          cardColor: themeColorOptions.cardColor,
        ),
      ],
      scaffoldBackgroundColor: themeColorOptions.backgroundPrimaryColor,
      //canvasColor: darkColor,
      highlightColor: themeColorOptions.backgroundPrimaryColor.withAlpha(50),
      iconTheme: IconThemeData(color: themeColorOptions.textPrimaryColor),
      dividerColor: themeColorOptions.backgroundSecondaryColor,
      progressIndicatorTheme: ProgressIndicatorThemeData(color: themeColorOptions.accentColor),
      colorScheme: brightness == Brightness.dark
          ? ColorScheme.dark(
              primary: themeColorOptions.textPrimaryColor,
              secondary: themeColorOptions.accentColor,
              error: themeColorOptions.errorColor,
            )
          : ColorScheme.light(
              primary: themeColorOptions.textPrimaryColor,
              secondary: themeColorOptions.accentColor,
              error: themeColorOptions.errorColor,
            ),
      appBarTheme: AppBarTheme(
        backgroundColor: themeColorOptions.backgroundPrimaryColor,
        foregroundColor: themeColorOptions.textPrimaryColor,
        scrolledUnderElevation: 0,
        titleTextStyle: TextStyle(
          color: themeColorOptions.textPrimaryColor,
          height: 1,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        iconTheme: IconThemeData(
          color: themeColorOptions.textPrimaryColor,
        ),
        actionsIconTheme: IconThemeData(
          color: themeColorOptions.textPrimaryColor,
        ),
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: themeColorOptions.backgroundSecondaryColor,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: themeColorOptions.backgroundPrimaryColor,
        elevation: 5,

        //selectedItemColor: themeColorOptions.textSecondaryColor,
        // unselectedItemColor: themeColorOptions.textPrimaryColor,
        // selectedLabelStyle: TextStyle(
        //   color: themeColorOptions.textSecondaryColor,
        //   height: 1.5,
        //   fontSize: 12,
        //   fontWeight: FontWeight.w400,
        // ),
        // unselectedLabelStyle: TextStyle(
        //   color: themeColorOptions.textPrimaryColor,
        //   height: 1.5,
        //   fontSize: 12,
        //   fontWeight: FontWeight.w400,
        // ),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: themeColorOptions.textSecondaryColor,
        indicatorColor: themeColorOptions.textSecondaryColor,
        indicatorSize: TabBarIndicatorSize.tab,
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) return Colors.transparent;
            return Colors.transparent;
          },
        ),
        indicator: BoxDecoration(
            border: Border(
          bottom: BorderSide(
            color: themeColorOptions.textSecondaryColor,
            width: 2.0,
          ),
        )),
        splashFactory: null,
        unselectedLabelColor: themeColorOptions.textPrimaryColor,
        unselectedLabelStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: themeColorOptions.textPrimaryColor),
      ),
      textTheme: TextTheme(
        //Onboading Title
        //Login Title
        //Access Denied Title
        headlineLarge: TextStyle(
          color: themeColorOptions.textPrimaryColor,
          height: 1.5,
          fontSize: 26,
          fontWeight: FontWeight.w600,
        ),
        //Onboading subtitle
        headlineMedium: TextStyle(
          color: themeColorOptions.textPrimaryColor,
          height: 1.5,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        //statistics category title
        headlineSmall: TextStyle(
          color: themeColorOptions.textPrimaryColor,
          height: 1.5,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TextStyle(
          color: themeColorOptions.textPrimaryColor,
          height: 1.5,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: themeColorOptions.textPrimaryColor,
          height: 1.5,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: themeColorOptions.textPrimaryColor,
          height: 1.5,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        //Worker Title
        //Forgot Password
        //Statistics Title
        //Feedback Category Title
        titleLarge: TextStyle(
          color: themeColorOptions.textPrimaryColor,
          height: 1.5,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        //textfield
        //settings
        titleMedium: TextStyle(
          color: themeColorOptions.textPrimaryColor,
          height: 1.5,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        // titleSmall: TextStyle(
        //   color: themeColorOptions.textPrimaryColor,
        //   height: 1.3,
        //   fontSize: 16,
        //   fontWeight: FontWeight.w400,
        // ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: themeColorOptions.textPrimaryColor,
        selectionColor: themeColorOptions.textPrimaryColor.withAlpha(50),
        selectionHandleColor: themeColorOptions.textPrimaryColor.withAlpha(50),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: themeColorOptions.backgroundPrimaryColor,
        padding: const EdgeInsets.all(12),
        //secondarySelectedColor: themeColorOptions.selectedChipBackgroundColor,
        //secondaryLabelStyle: TextStyle(color: themeColorOptions.selectedChipTextColor),
        labelStyle: TextStyle(
          color: themeColorOptions.textPrimaryColor,
          height: 1,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
          side: BorderSide(
            color: themeColorOptions.textSecondaryColor,
            width: 1.0,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: themeColorOptions.textPrimaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: themeColorOptions.textSecondaryColor,
          ),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: themeColorOptions.textSecondaryColor,
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: themeColorOptions.errorColor,
            width: 2.0,
          ),
        ),
        errorStyle: TextStyle(
          color: themeColorOptions.errorColor,
        ),
        fillColor: themeColorOptions.backgroundPrimaryColor,
        hintStyle: TextStyle(
          color: themeColorOptions.textSecondaryColor,
        ),
        filled: true,
        //labelStyle: TextStyle(color: Colors.red),
        contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
            //side: BorderSide(width: 0, color: Colors.transparent),
          ),
          elevation: 0,

          //side: BorderSide(color: accentColor),
          backgroundColor: themeColorOptions.accentColor,
          foregroundColor: themeColorOptions.buttonTextColor,
          disabledBackgroundColor: themeColorOptions.accentColor.withAlpha(100),
          disabledForegroundColor: themeColorOptions.buttonTextColor,
          textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, height: 1),
          minimumSize: const Size(double.infinity, 56),
        ),
      ),
    );
  }
}
