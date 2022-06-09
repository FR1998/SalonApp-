import 'package:flutter/material.dart';
import 'package:loginscreen/pages/home.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:MaterialButton(
        minWidth: double.infinity,
        height: 60,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => HomePage2()));
        },
        // defining the shape
        color: Colors.pinkAccent,
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.white,

            ),
            borderRadius: BorderRadius.circular(50)
        ),
        child: Text(
          "Go to Home Page",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
