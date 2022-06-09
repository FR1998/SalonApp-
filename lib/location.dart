import 'package:flutter/material.dart';
import 'package:loginscreen/login.dart';

class LocPage extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
      return Center(
          child: SingleChildScrollView(
            child: Container(
              width: 300,
              height: 400,
              padding: new EdgeInsets.all(10.0),
              child: Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),

                ),
                color: Colors.brown,
                elevation: 50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[

                    Center(child: Icon(Icons.home, size: 60)),
                     Column(
                       children: [
                         Row(
                           children: [
                             Center(
                               child: Text("Enable your location",style: TextStyle(
                                 fontSize: 25,
                               ),),
                             )
                           ],
                         ),
                         Row(
                           children: [
                             Center(
                               child: Text("Please allow to use your location to show nearby services on the map",style: TextStyle(
                                 fontSize: 15,
                               ),),
                             )
                           ],
                         )
                       ],
                     ),
                    ButtonBar(
                      children: <Widget>[
                        RaisedButton(
                          child: const Text('Done'),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )

      );
  }
}
