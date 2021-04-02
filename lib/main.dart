import 'package:flutter/material.dart';
import 'package:cannum/RouteGenerator.dart';
import 'Login.dart';
import 'dart:io';

final ThemeData androidTheme =
    ThemeData(primaryColor: Color(0xff020659), accentColor: Color(0xff525AFF));

final ThemeData iosTheme =
    ThemeData(primaryColor: Colors.grey[200], accentColor: Color(0xff525AFF));

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    home: Login(),
    theme: Platform.isIOS ? iosTheme : androidTheme,
    initialRoute: "/",
    onGenerateRoute: RouteGenerator.generateRoute,
    debugShowCheckedModeBanner: false,
  ));
}
