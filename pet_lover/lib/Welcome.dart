import 'package:flutter/material.dart';
import 'package:welcome/home.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              child: Image.asset(
                "images/dog.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Find ,Adopt or \nComplaint",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 3,
                    wordSpacing: 2),
                textAlign: TextAlign.center),
          )),
          Center(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("I'm convinced that petting a puppy is good luck.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                  wordSpacing: 2,
                ),
                textAlign: TextAlign.center),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black54),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black54),
              ),
              Container(
                height: 8,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black54),
              )
            ],
          ),
          Container(
            height: 50,
            width: 250,
            margin: EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[800]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Let's get Started",
                    style: TextStyle(color: Colors.white)),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  },
                                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.yellow[400]),
                        child: Icon(Icons.arrow_forward),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
