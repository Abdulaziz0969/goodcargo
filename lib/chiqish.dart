import 'package:flutter/material.dart';

class Loqin extends StatefulWidget {
  const Loqin({Key? key}) : super(key: key);

  @override
  State<Loqin> createState() => _LoqinState();
}

class _LoqinState extends State<Loqin> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/rasmOrqa.jpg', // Replace with your image asset path
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              width: 350,
              height: 360,
              decoration: BoxDecoration(

                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0), // Set the radius here
              ),
              child: Column(
                children: [
                  Text(
                    "Kirish",
                    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold, ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 300, // Set your desired width
                    height: 45,  // Set your desired height
                    child: Center(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'ID code kiriting..',
                          hintStyle: TextStyle(color: Colors.white70),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0), // Border radius
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0), // Border radius on focus
                            borderSide: BorderSide(color: Colors.blue), // Border color on focus
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: 300, // Set your desired width
                    height: 45,  // Set your desired height
                    child: Center(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: '+998 xx xxx xx xx',
                          hintStyle: TextStyle(color: Colors.white70),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0), // Border radius
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0), // Border radius on focus
                            borderSide: BorderSide(color: Colors.blue), // Border color on focus
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Yuborish",style: TextStyle(color: Colors.white),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Set your desired background color
                      minimumSize: MaterialStateProperty.all<Size>(Size(325, 50)), // Set your desired width and height
                    ),
                  ),

                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Foydalanish uchun qollanma",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 8), // Adjust the space between text and icon
                          Icon(
                            Icons.account_balance_wallet_sharp, // Set your desired icon
                            color: Colors.white,
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                      ),
                    ),
                  ),

                  SizedBox(height: 40,),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Royhatdan o'tish",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 8), // Adjust the space between text and icon
                          Icon(
                            Icons.person, // Set your desired icon
                            color: Colors.white,
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                        minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                      ),
                    ),
                  ),


                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
