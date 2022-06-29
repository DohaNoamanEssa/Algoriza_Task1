import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final TextEditingController mailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 70,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: ExactAssetImage("assets/images/bgimage.png"),
                      fit: BoxFit.fill,
                    )),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                      child: IconButton(
                        iconSize: 35,
                          onPressed: () {
                            Navigator.of(context).pushNamed('/a');
                          },
                          icon: Icon(Icons.arrow_circle_left_rounded)))
                ],
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
                        "Register",
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
                      "E-mail",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(width: 2, color: Colors.grey),
                      ),
                      hintText: "Eg.example@email.com",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    style: TextStyle(color: Colors.black),
                    controller: mailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val.toString().isEmpty ||
                          !val.toString().contains("@")) {
                        return "invalid email";
                      } else
                        return null;
                    },

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phone Number",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 2,
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
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(width: 2, color: Colors.grey),
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    style: TextStyle(color: Colors.black),
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,

                    obscureText: true,
                    validator: (val) {
                      if (val.toString().isEmpty ||
                          val.toString().contains("@") ||
                          val.toString().length < 5) {
                        return "invalid password";
                      } else
                        return null;
                    },




                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(3),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "           or           ",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white38,
                    ),
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(3),
                    child: MaterialButton(
                      color: Colors.white38,
                      onPressed: () {},
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
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Has any account?",
                        style: TextStyle(color: Colors.black54, fontSize: 20),
                      ),
                      Text(
                        " Sign in here",
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    " By regestering your account, you are agree to our",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    " terms and conditions",
                    style: TextStyle(color: Colors.blue, fontSize: 17),
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
