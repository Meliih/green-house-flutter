import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Verimlilik extends StatefulWidget {
  const Verimlilik({Key? key}) : super(key: key);

  @override
  State<Verimlilik> createState() => _VerimlilikState();
}

class _VerimlilikState extends State<Verimlilik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Verimlilik')),
        backgroundColor: Color.fromARGB(255, 53, 106, 20),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(Icons.air, color: Colors.green),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        //color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: AutoSizeText("Hava durumu:",
                        textDirection: TextDirection.ltr,
                        //textAlign: TextAlign.justify,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      "Güneşli",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(Icons.hot_tub_sharp, color: Colors.green),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        //color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: AutoSizeText("Sıcaklık:",
                        textDirection: TextDirection.ltr,
                        //textAlign: TextAlign.justify,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      "23°C",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      Icons.battery_charging_full,
                      color: Colors.green,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        //color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: AutoSizeText("Verimlilik:",
                        textDirection: TextDirection.ltr,
                        //textAlign: TextAlign.justify,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      "%95",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
