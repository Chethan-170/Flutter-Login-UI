import 'package:flutter/material.dart';
import 'package:flutter_login_ui/provider/theme_provider.dart';
import 'package:flutter_login_ui/widgets/change_theme_button.dart';
import 'package:provider/provider.dart';
import 'package:flutter_login_ui/main.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(MyApp.title),
        actions: [
          ChangeThemeButton(),
        ],
      ),
      body: Center(
        child: Text(
          'Hello $text!',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
