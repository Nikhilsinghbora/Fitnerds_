import 'package:Fitnerds/Pages/Details/user_preferences.dart';
import 'package:Fitnerds/Pages/Homepage/homepage.dart';
import 'package:Fitnerds/Pages/intro/splash/splashscreen.dart';
import 'package:Fitnerds/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return ThemeProvider(
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeProvider.themeOf(context).data,
          title: title,
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
