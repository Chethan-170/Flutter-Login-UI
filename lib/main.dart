import 'package:flutter/material.dart';
import 'package:flutter_login_ui/provider/theme_provider.dart';
import 'package:flutter_login_ui/screens/dashboard.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Light & Dark Theme';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          themeMode: themeProvider.themeMode,
          theme: lightThemeData(context),
          darkTheme: darkThemeData(context),
          home: Dashboard(),
        );
      },
    );
  }
}
