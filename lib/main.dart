import 'package:flutter/material.dart';
import 'package:money_manager/router.dart';

import 'constants.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "flutter_navigation_sample",
    theme: ThemeData(primarySwatch: Colors.indigo),
    
     initialRoute: homeRoute,
     onGenerateRoute: createRoute,
    ));
