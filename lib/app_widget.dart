import 'package:flutter/material.dart';

import 'home_page.dart';
import 'theme/dark/dark_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Simple music player',
        debugShowCheckedModeBanner: false,
        theme: darkThemeData,
        home: const HomePage(),
      );
}
