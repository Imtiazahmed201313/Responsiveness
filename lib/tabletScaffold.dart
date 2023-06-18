import 'package:flutter/material.dart';
import 'package:projectnine/constants.dart';

import 'myBox.dart';
import 'myTile.dart';

class tabletScaffold extends StatefulWidget {
  const tabletScaffold({Key? key}) : super(key: key);

  @override
  State<tabletScaffold> createState() => _tabletScaffoldState();
}

class _tabletScaffoldState extends State<tabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: myAppbar,
      drawer: myDrawer,

      body: Column(
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
      ),
    );
  }
}
