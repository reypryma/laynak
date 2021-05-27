import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laynak/presentation/profile/profile_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.lime,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: ProfilePage(),
    );
  }
}
