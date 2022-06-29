import 'package:flutter/material.dart';
import 'package:task1/button_shape.dart';
import 'package:task1/login_page.dart';
import 'package:task1/register_page.dart';

import 'indicator.dart';

class Data {
  final String title;
  final String description;
  final String imageUrl;

  Data({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

class PView extends StatefulWidget {
  const PView({Key? key}) : super(key: key);

  @override
  State<PView> createState() => _PViewState();
}

class _PViewState extends State<PView> {
  final PageController _controller = PageController(
    initialPage: 0,
  );
  int currentIndex = 0;
  final List<Data> myData = [
    Data(
      title: "Get food delivery to your doorstep asap",
      description: "we have young and professional delivery team that will "
          "bring your food as soon as possible to your doorstep ",
      imageUrl: "assets/images/delivergo.png",
    ),
    Data(
      title: "Buy Any Food from your favorite restaurant",
      description: "we are constantly adding favourite restaurant "
          "throughout the territory and around your area carefully selected ",
      imageUrl: "assets/images/deliverdone.png",
    ),
    Data(
      title: "Buy Any Food from your favorite restaurant",
      description: "we are constantly adding favourite restaurant ",
      imageUrl: "assets/images/deliverdo.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/a': (ctx) => LoginPage(),
        '/b': (ctx) => RegisterPage(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(300, 50, 0, 0),
              padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.teal),
              child: Text(
                "Skip",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.all(75),
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 50,
                  width: 130,
                  child: Image.asset("assets/images/logo.png"),
                ),
              ),
            ),
            Builder(
              builder: (cttx) => PageView(
                  controller: _controller,
                  onPageChanged: (val) {
                    setState(() {
                      currentIndex = val;
                    });
                  },
                  children: [
                    ...myData.map((item) => Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 3,
                                child: SizedBox(
                                  height: 300,
                                  width: 300,
                                  child: Image.asset(item.imageUrl),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                child: Text(
                                  item.title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.all(15),
                                  alignment: Alignment.center,
                                  child: Text(
                                    item.description,
                                    style: TextStyle(
                                      fontSize: 21,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                  ]),
            ),
            Indicator(currentIndex),
            Builder(
              builder: (ctx) => Align(
                alignment: Alignment(0, .89),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.teal,
                  ),
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.all(3),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(ctx).pushNamed('/a');

                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // ButtonShape(Colors.teal, "GetStarted", 15.0, Colors.white),
              ),
            ),
            Align(
                alignment: Alignment(0, .97),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Text(
                        " SignUp",
                        style: TextStyle(color: Colors.teal, fontSize: 22),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
