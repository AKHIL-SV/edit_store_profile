import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants.dart';
import 'view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 768),
      builder: (context, child) {
        return MaterialApp(
          title: 'Home',
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: const HomePage(),
        );
      },
    );
  }
}
