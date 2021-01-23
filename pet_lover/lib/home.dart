import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Stack(children: [
Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          child: Image.asset("images/dog.jpg",
                              height: 50, width: 50)),
                      Column(
                        children: [
                          Text("Location",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black26,
                              ),
                              textAlign: TextAlign.center),
                          Text("Myanmar Yangon",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center)
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.yellow[100].withOpacity(0.3),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Icon(Icons.dashboard_customize),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        width: 330,
                        margin: EdgeInsets.only(top: 50),
                        decoration: BoxDecoration(
                            color: Colors.yellow[200].withOpacity(0.7),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 150,
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Join Today and Save Lives!",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text("Gives shetter to strays dogs",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black26,
                                          ),
                                          textAlign: TextAlign.center),
                                      Container(
                                        height: 40,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.grey[900]),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 5,
                        child: Image.asset(
                          "images/dog-rb.png",
                          width: 150,
                          height: 300,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nearby Stray Dogs",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text("see all",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black26,
                              ),
                              textAlign: TextAlign.center),
                        ]),
                  ),
                  Container(
                    height: 50,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue[100].withOpacity(0.3)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(color: Colors.black26),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Dog(),
                            Dog(),
                            Dog(),
                            Dog(),
                          ],
                        )),
                  ),
                ],
              ),
                 Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:660),
                      color: Colors.grey[300],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:  Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(children: [
                                    Icon(Icons.home),
                                    Text("Home")
                                  ]),
                                  Column(children: [
                                    Icon(
                                      Icons.edit,
                                      color: Colors.black45,
                                    ),
                                    Text(
                                      "Upload",
                                      style: TextStyle(
                                        color: Colors.black45,
                                      ),
                                    )
                                  ]),
                                  SizedBox(width:50),
                                  Column(children: [
                                    Icon(
                                      Icons.notifications_active,
                                      color: Colors.black45,
                                    ),
                                    Text(
                                      "Notification",
                                      style: TextStyle(
                                        color: Colors.black45,
                                      ),
                                    )
                                  ]),
                                  Column(children: [
                                    Icon(
                                      Icons.account_circle,
                                      color: Colors.black45,
                                    ),
                                    Text(
                                      "Profile",
                                      style: TextStyle(
                                        color: Colors.black45,
                                      ),
                                    )
                                  ]),
                                ]),
                         
                      ),
                    ),
                     Positioned(
                      bottom: 30,
                      right: 160,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.yellow[300].withOpacity(0.7),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Icon(Icons.camera_alt),
                      ),
                    )
                  ],
                )
            
            ],)
            
            
          ],
        ),
      ),
    );
  }
}

class Dog extends StatelessWidget {
  const Dog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 200,
      margin: EdgeInsets.only(top: 5, left: 5, right: 5),
      decoration: BoxDecoration(
          color: Colors.yellow[200].withOpacity(0.7),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 80,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Name!",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("1 year old\n Male",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black26,
                        ),
                        textAlign: TextAlign.center),
                  ]),
            ),
          ),
          Positioned(
            right: 5,
            bottom: 5,
            child: Image.asset(
              "images/dog-rb.png",
              width: 150,
              height: 150,
            ),
          )
        ],
      ),
    );
  }
}
