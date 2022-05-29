import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Panellerin Görüntüsü')),
        backgroundColor: Color.fromARGB(255, 53, 106, 20),
      ),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width / 9 * 4,
              height: size.height / 9 * 3,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/siyahekran.jpg"),
                      fit: BoxFit.fill)),
              child: Text(""),
            ),
            Container(
              width: size.width / 9 * 4,
              height: size.height / 9 * 3,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/gunespanel.jpg"),
                      fit: BoxFit.fill)),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width / 9 * 4,
              height: size.height / 9 * 3,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/siyahekran.jpg"),
                      fit: BoxFit.fill)),
            ),
            Container(
              width: size.width / 9 * 4,
              height: size.height / 9 * 3,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/siyahekran.jpg"),
                      fit: BoxFit.fill)),
            )
          ],
        )
      ]),
    );
  }
}
