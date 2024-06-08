import 'package:flutter/material.dart';

class ResponsiveProvider extends StatelessWidget {
  final Widget webLayout;
  final Widget mobileLayout;
  const ResponsiveProvider({
    super.key,
    required this.webLayout,
    required this.mobileLayout
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return webLayout;
          } else {
            return mobileLayout;
          }
        },
    );
  }
}
