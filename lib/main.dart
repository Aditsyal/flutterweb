import 'package:flutter_web/material.dart';
import 'package:flutterweb/constant/Constants.dart';
import 'package:flutterweb/screen/HomeScreen.dart';

void main() => runApp(
      MaterialApp(
        title: 'ListView Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Color(0xFF761322),
        ),
        routes: <String, WidgetBuilder>{
          //SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
          HOME_SCREEN:(BuildContext context)=>HomeScreen(),
          //LISTVIEW_ITEM_DETAILS_SCREEN:(BuildContext context)=>ListItemDetails(),

        },
        home: HomeScreen(),
      ),
    );