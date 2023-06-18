import 'package:flutter/material.dart';
import 'package:projectnine/desktopScaffold.dart';
import 'package:projectnine/mobileScaffold.dart';
import 'package:projectnine/tabletScaffold.dart';

import 'Responsive_Layout.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: mobileScaffold(),
        tabletScaffold: tabletScaffold(),
        desktopScaffold: desktopScaffold()
      ),
    );
  }
}
