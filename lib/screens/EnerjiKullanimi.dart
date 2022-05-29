import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class EnerjiKullanimi extends StatefulWidget {
  const EnerjiKullanimi({Key? key}) : super(key: key);

  @override
  State<EnerjiKullanimi> createState() => _EnerjiKullanimiState();
}

class _EnerjiKullanimiState extends State<EnerjiKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Enerji Kullanımı')),
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
                    child: AutoSizeText("Bu gün kullanılan enerji:",
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
                      "17000 watt",
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
                    child: AutoSizeText("Saat:",
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
                      "17:00",
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
