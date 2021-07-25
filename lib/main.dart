import 'package:flutter/material.dart';
import 'package:wolrdtimeapp/pages/home.dart';
import 'package:wolrdtimeapp/pages/location.dart';
import 'package:wolrdtimeapp/pages/loading.dart';
void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));
