import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/buttons_screen.dart';
import 'package:flutter_widgets/screens/cards_screen.dart';
import 'package:flutter_widgets/screens/columns_rows_screen.dart';
import 'package:flutter_widgets/screens/home_screen.dart';
import 'package:flutter_widgets/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/buttons': (context) => ButtonsScreen(),
        '/columns_rows': (context) => ColumnsRowsScreen(),
        '/cards': (context) => CardsScreen(),
      },
    );
  }
}
