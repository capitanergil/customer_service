import 'package:customer_service/login_page.dart';
import 'package:flutter/material.dart';
import 'package:customer_service/admin/owner_page.dart';
import 'package:customer_service/admin/owners_page.dart';
import 'package:customer_service/admin/add_owner_page.dart';
import 'package:customer_service/admin/buildings_page.dart';
import 'package:customer_service/admin/building_page.dart';
import 'package:customer_service/admin/room_page.dart';
import 'package:customer_service/admin/rooms_page.dart';
import 'package:customer_service/admin/settings_page.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Customer Service';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromRGBO(248, 248, 248, 1),
        //accentColor: Color.fromRGBO(248, 248, 248, 1),
        accentColor: Color.fromRGBO(0, 191, 84, 1),
        fontFamily: 'Georgia',
//        textTheme: TextTheme(
//          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//          bodyText: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
//        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/add_owner_page': (context) => AddOwnerPage(),
        '/building_page': (context) => BuildingPage(),
        '/buildings_page': (context) => BuildingsPage(),
        '/owner_page': (context) => OwnerPage(),
        '/owners_page': (context) => OwnersPage(),
        '/room_page': (context) => RoomPage(),
        '/rooms_page': (context) => RoomsPage(),
        '/settings_page': (context) => SettingsPage(),
      },
    );
  }
}
