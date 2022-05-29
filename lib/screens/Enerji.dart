import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Enerji extends StatefulWidget {
  const Enerji({Key? key}) : super(key: key);

  @override
  State<Enerji> createState() => _EnerjiState();
}

class _EnerjiState extends State<Enerji> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Center(child: Text('Enerji Üretimi')),
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
                    decoration: BoxDecoration(
                        //color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: AutoSizeText("Şu anda sistemde kaç panel çalışıyor:",
                        textDirection: TextDirection.ltr,
                        //textAlign: TextAlign.justify,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      "60",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
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
                    decoration: BoxDecoration(
                        //color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: AutoSizeText("Ürettiği enerji:",
                        textDirection: TextDirection.ltr,
                        //textAlign: TextAlign.justify,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      "22250 watt",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
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
