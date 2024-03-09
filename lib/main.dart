import 'package:flutter/material.dart';
import 'chiqish.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyAppState();
}

class _MyAppState extends State<MyHomePage> {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Center(
                    child: Text(
                      "Sizning ID ngiz: 123",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  width: 200,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isButtonPressed = !isButtonPressed;
                    });
                  },
                  icon: Icon(Icons.sunny),
                  color: isButtonPressed ? Colors.black : Colors.white,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Loqin()),
                    );
                  },
                  child: Text("Chiqish"),
                ),
              ],
            ),
            width: screenSize.width * 20,
            height: screenSize.height * 0.1,
            color: Colors.black12,
          ),
          Container(
            width: 280,
            height: 190,
            child: Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/well.jpg"),
                    width: 190,
                    height: 150,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      launch("https://t.me/kamera_qoyish");
                    },
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(280, 40)),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.green;
                          }
                          return Colors.blue;
                        },
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "foydalanishga qollanma",
                          style: TextStyle(color: Colors.white),
                        ),
                        Image.asset(
                          "assets/iconImage/arrows.png",
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: isButtonPressed ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            width: 280,
            height: 190,
            child: Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/welll2.jpg"),
                    width: 190,
                    height: 150,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Boshqa amallar
                    },
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(280, 40)),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.green;
                          }
                          return Colors.blue;
                        },
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "foydalanishga qollanma",
                          style: TextStyle(color: Colors.white),
                        ),
                        Image.asset(
                          "assets/iconImage/arrows.png",
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: isButtonPressed ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            width: 280,
            height: 190,
            child: Column(
              children: [
                Image(
                  image: AssetImage("assets/well3.jpg"),
                  width: 250,
                  height: 150,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Boshqa amallar
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(280, 40)),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.green;
                        }
                        return Colors.blue;
                      },
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "foydalanishga qollanma",
                        style: TextStyle(color: Colors.white),
                      ),
                      Image.asset(
                        "assets/iconImage/arrows.png",
                        width: 20,
                        height: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: isButtonPressed ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    ));
  }
}
