import 'package:flutter/material.dart';
import 'package:projectnine/constants.dart';
import 'package:projectnine/myBox.dart';
import 'package:projectnine/myTile.dart';

class mobileScaffold extends StatefulWidget {
  const mobileScaffold({Key? key}) : super(key: key);

  @override
  State<mobileScaffold> createState() => _mobileScaffoldState();
}

class _mobileScaffoldState extends State<mobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: myAppbar,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
