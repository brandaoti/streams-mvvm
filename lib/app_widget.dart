import 'package:flutter/material.dart';

import 'app/home_view.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVC',
      home: HomeView(),
    );
  }
}
