import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {

  late final Widget mobileScaffold;
  late final Widget tabletScaffold;
  late final Widget desktopScaffold;

  ResponsiveLayout({required this.mobileScaffold,required this.desktopScaffold,required this.tabletScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constriants){
      if(constriants.maxWidth < 501){
        return mobileScaffold;
      }
      else if (constriants.maxWidth < 1100){
        return tabletScaffold;
      }
      else {
        return desktopScaffold;
      }
    });
  }
}
