import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:green_house_flutter/screens/Camera.dart';
import 'package:green_house_flutter/screens/Enerji.dart';
import 'package:green_house_flutter/screens/EnerjiKullanimi.dart';
import 'package:green_house_flutter/screens/Verimlilik.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () {
        SystemNavigator.pop();
        return Future.value(false);
      },
      child: Scaffold(
        endDrawer: ,
        appBar: AppBar(
          title: Center(child: Text('Green House')),
          backgroundColor: Color.fromARGB(255, 53, 106, 20),
        ),
        body: Container(
            height: size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: new AssetImage("assets/arka_plan.png"),
              fit: BoxFit.fill,
            )),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height / 7 * 2,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/guneyresim.jpg'),
                    radius: 80,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width / 40 * 2,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Enerji())),
                          child: Container(
                            width: size.width / 40 * 17,
                            height: size.height / 7 * 1.5,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/gunesicon.png'),
                                  radius: 50,
                                  backgroundColor: Colors.grey,
                                ),
                                AutoSizeText(
                                  "Ne kadar enerji ürettigi",
                                  textDirection: TextDirection.ltr,
                                  //textAlign: TextAlign.justify,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width / 40 * 2,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EnerjiKullanimi())),
                          child: Container(
                            width: size.width / 40 * 17,
                            height: size.height / 7 * 1.5,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/nekadarenerji.png'),
                                  radius: 50,
                                  backgroundColor: Colors.grey,
                                ),
                                AutoSizeText(
                                  "Ne kadar kullanıldığı",
                                  textDirection: TextDirection.ltr,
                                  //textAlign: TextAlign.justify,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Verimlilik())),
                      child: Row(
                        children: [
                          SizedBox(
                            width: size.width / 40 * 2,
                          ),
                          Container(
                            width: size.width / 40 * 17,
                            height: size.height / 7 * 1.5,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/oranresmi.png'),
                                  radius: 50,
                                  backgroundColor: Colors.grey,
                                ),
                                AutoSizeText(
                                  "Verimlilik oranı",
                                  //textDirection: TextDirection.ltr,
                                  //textAlign: TextAlign.justify,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: size.width / 40 * 2,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Camera())),
                            child: Container(
                              width: size.width / 40 * 17,
                              height: size.height / 7 * 1.5,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/kamera.png'),
                                    radius: 50,
                                    backgroundColor: Colors.grey,
                                  ),
                                  AutoSizeText(
                                    "Panellerin kamera görüntüsü",
                                    textDirection: TextDirection.ltr,
                                    //textAlign: TextAlign.justify,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
