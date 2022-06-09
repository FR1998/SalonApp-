import 'package:flutter/material.dart';
import 'package:loginscreen/pages/haircut.dart';
import 'package:loginscreen/uidata.dart';
import 'package:loginscreen/widgets/image_card.dart';
import 'package:loginscreen/widgets/my_column.dart';
import 'package:loginscreen/widgets/specialist_column.dart';
import 'package:loginscreen/pages/haircut.dart';

class HomePage2 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.short_text, color: Colors.black87),
              onPressed: () {}),
          actions: <Widget>[
            Container(
              decoration: BoxDecoration(),
              margin: EdgeInsets.only(right: 15, top: 15),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(
                  "images/profile.jpg",
                ),
              ),
            ),
          ],
        ),
        body: Container(
          width: screen_size_width,
          height: screen_size_height,
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                    height: screen_size_height * .2,
                    width: screen_size_width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ImageCard(cardImg: "images/braid4.jpg"),
                        SizedBox(width: 10),
                        ImageCard(cardImg: "images/braid3.jpg"),
                      ],
                    )),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, UIData.bridalPageRoute),
                        child: MyColumn(
                          columnImg: "images/braid.png",
                          columnTxt: "Bridal",
                          columnBg: UIData.lightColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, UIData.groomPageRoute),
                        child: MyColumn(
                          columnImg: "images/abuja.png",
                          columnTxt: "Groom",
                          columnBg: UIData.lighterColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, UIData.hairstylingPageRoute),
                        child: MyColumn(
                          columnImg: "images/blow.png",
                          columnTxt: "Hair Styling",
                          columnBg: UIData.lighterColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, UIData.haircutPageRoute),
                        child: MyColumn(
                          columnImg: "images/haircut.png",
                          columnTxt: "Haircut",
                          columnBg: UIData.lighterColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, UIData.haircolorPageRoute),
                        child: MyColumn(
                          columnImg: "images/relaxer.png",
                          columnTxt: "Hair Color",
                          columnBg: UIData.lighterColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, UIData.makeupPageRoute),
                        child: MyColumn(
                          columnImg: "images/shampoo.png",
                          columnTxt: "MakeUp",
                          columnBg: UIData.lighterColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, UIData.manicurePageRoute),
                        child: MyColumn(
                          columnImg: "images/nail.png",
                          columnTxt: "Manicure",
                          columnBg: UIData.lighterColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, UIData.facialPageRoute),
                        child: MyColumn(
                          columnImg: "images/more.png",
                          columnTxt: "Facial",
                          columnBg: UIData.lighterColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: Text("Hair Specialists",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600))),
                      FlatButton(
                          onPressed: () {},
                          child: Text("View All",
                              style: TextStyle(color: Colors.black54)))
                    ]),
                SizedBox(height: 6),
                Container(
                    height: 230,
                    width: screen_size_width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SpecialistColumn(
                            specImg: "assets/pic1.png", specName: "Fatima Nasir"),
                        SizedBox(width: 12),
                        SpecialistColumn(
                            specImg: "assets/pic6.png", specName: "Hamza Rayan"),
                        SizedBox(width: 12),
                        SpecialistColumn(
                            specImg: "assets/pic8.png", specName: "Sara Khan"),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
