import 'package:Fitnerds/utils/themes.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;
  const icon = CupertinoIcons.moon_stars;
  return AppBar(
    leading: const BackButton(color: Colors.black),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
        // This is not working
        onPressed: () {
          final theme = isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;
          final switcher = ThemeSwitcher.of(context);
          switcher.changeTheme(theme: theme);
        },
        icon: const Icon(icon),
      )
    ],
  );
}
