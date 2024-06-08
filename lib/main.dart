import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/responsive_provider.dart';
import 'package:whatsapp_clone/pages/mobile_screen.dart';
import 'package:whatsapp_clone/pages/web_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    ThemeData getMyTheme() {
      return ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color.fromRGBO(19, 28, 33, 1)
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getMyTheme(),
      home: const ResponsiveProvider(
        mobileLayout: MobileScreen(),
        webLayout: WebScreen(),
      ),
    );
  }
}
