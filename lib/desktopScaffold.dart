import 'package:flutter/material.dart';
import 'package:projectnine/constants.dart';

import 'myBox.dart';
import 'myTile.dart';

class desktopScaffold extends StatefulWidget {
  const desktopScaffold({Key? key}) : super(key: key);

  @override
  State<desktopScaffold> createState() => _desktopScaffoldState();
}

class _desktopScaffoldState extends State<desktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: myAppbar,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 2,
            child: Column(
            children: [
              AspectRatio(
                aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                      itemBuilder: (context,index){
                        return myBox();
                      }
                  ),
                ),
              ),
              Expanded(child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return myTile();
                  }))
            ],
          ),),
          Expanded(child: Container(
            child: Expanded(
              child: Container(
                color: Colors.grey[500],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
