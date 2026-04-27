import 'package:b_store_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
// import 'splashscreen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: BAppTheme.lightTheme,
      darkTheme: BAppTheme.darkTheme,
    );
  }
}

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: splash(),
//       themeMode: ThemeMode.system,
//       theme: BAppTheme.lightTheme,
//       darkTheme: BAppTheme.darkTheme,
//     );
//   }
// }
