import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var unforget = false;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () {
        SystemNavigator.pop();
        return Future.value(false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Center(child: Text('Green House')),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Container(
              height: size.height,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(18),
                    height: 235,
                    child: Image.asset("assets/itucu.png"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 3 / 14,
                      ),
                      Container(
                        width: size.width * 8 / 14,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.green,
                            ),
                            border: InputBorder.none,
                            hintText: "Kullanıcı Adı",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 3 / 14,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 3 / 14,
                      ),
                      Container(
                        width: size.width * 8 / 14,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                          obscureText: isHidden,
                          controller: _passwordController,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.green,
                            ),
                            suffixIcon: IconButton(
                              icon: isHidden
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                              onPressed: togglePasswordVisibilty,
                            ),
                            border: InputBorder.none,
                            hintText: "Parola",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 3 / 14,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 4 / 14,
                      ),
                      Checkbox(
                          activeColor: Colors.green,
                          value: unforget,
                          onChanged: (bool? value) {
                            setState(() {
                              unforget = value!;
                            });
                          }),
                      Text("Beni Hatırla"),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ButtonTheme(
                    minWidth: size.width * 5 / 14,
                    height: 50,
                    child: RaisedButton(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      onPressed: () {
                        isEmptyusername();
                        if (_usernameController.text == "güneyaltunay" &&
                            _passwordController.text == "123456") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        } else {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Kullanıcı Adı veya Parola Hatalı"),
                            ),
                          );
                        }
                      },
                      child: Text(
                        "Giriş Yap",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  void togglePasswordVisibilty() => setState(() => isHidden = !isHidden);

  void isEmptyusername() {
    if (_passwordController.text.isEmpty || _usernameController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Hata"),
            content: Text("Kullanıcı Adı ve Parola boş bırakılamaz"),
            actions: [
              FlatButton(
                child: Text("Tamam"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }
}
