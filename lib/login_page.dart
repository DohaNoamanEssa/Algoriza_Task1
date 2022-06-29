import 'package:flutter/material.dart';
import 'package:task1/button_shape.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 220,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: ExactAssetImage("assets/images/bgimage.png"),
                  fit: BoxFit.fill,
                )),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Welcome to Fashion Daily",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Text(
                        "Help",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                        ),
                      ),
                      Icon(
                        Icons.help,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phone Number",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(width: 2, color: Colors.grey),
                      ),
                      hintText: "Eg.812345678",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    style: TextStyle(color: Colors.black),
                    controller: myController,
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(3),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "           or           ",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.white38,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset("assets/images/google.png"),
                        ),
                        Text(
                          "  Sign with by google",
                          style: TextStyle(color: Colors.blue, fontSize: 22),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Doesn't has any account?",
                        style: TextStyle(color: Colors.black54, fontSize: 20),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/b');
                        },
                        child: Text(
                          " Register here",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    " Use the application according to policy rules. Any"
                    " kinds of violations will be subject to sanctions.",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
