import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_test/layout/home_layout.dart';
import 'package:firebase_test/shared/styles/my_theme.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeLayout.routName: (_) => HomeLayout(),
      },
      initialRoute: HomeLayout.routName,
      theme: MyTheme.lightTheme,
      // darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
