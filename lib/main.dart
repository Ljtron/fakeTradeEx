import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        number: 100,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.number}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final int number;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int _counter = 0;
  String title;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Text("TradeEX",
                      style: TextStyle(
                          fontFamily: "Ariel",
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0, top: 13.0),
                  child: Container(
                      child: InkWell(
                          onTap: () {},
                          child:
                              Text("Log In", style: TextStyle(fontSize: 20)))),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width - 30,
              height: MediaQuery.of(context).size.width - 175,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://public.bnbstatic.com/20200504/3a515dac-7cfe-4edd-99e8-75bd45b100c4.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Suggestion",
                    style: TextStyle(
                        fontFamily: "Ariel",
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                InkWell(
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.grey[600],
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
          SizedBox(height: 6),
          card("BTC/USDT", 4276.21, "24H Vol 6.48", 1.68),
          card("ETH/USDT", 128.65, "24H Vol 37671", -1.45),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 3.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF003366)),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("My Wallet",
                            style: TextStyle(
                                fontFamily: "Arial",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFD700))),
                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: MediaQuery.of(context).size.height / 6.75,
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              left: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "578.32",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Arial",
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "USDT",
                                    style: TextStyle(
                                        color: Colors.white30,
                                        fontFamily: "Arial",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Positioned(
                              top: 0,
                              right: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "292.85",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Arial",
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "SNAP",
                                    style: TextStyle(
                                        color: Colors.white30,
                                        fontFamily: "Arial",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Positioned(
                              bottom: 0,
                              left: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "+97.98",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Arial",
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Total Revenue",
                                    style: TextStyle(
                                        color: Colors.white30,
                                        fontFamily: "Arial",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                          Positioned(
                              bottom: 0,
                              right: 15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "24.65",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Arial",
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "USDT",
                                    style: TextStyle(
                                        color: Colors.white30,
                                        fontFamily: "Arial",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Center(
                              child: Container(
                            height: 110,
                            width: 2,
                            decoration: BoxDecoration(color: Colors.grey),
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  Widget card(String title, double price, String volume, double percentage) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, left: 20, right: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(),
              ));
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                volume,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )
            ],
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 35.0),
                child: percentage < 0
                    ? Image.asset("assets/images/red_Graph.jpg",
                        width: 55, height: 50)
                    : Image.asset("assets/images/green_Graph.jpg",
                        width: 55, height: 50),
              ), //This is where the graph goes
              Column(
                children: [
                  Text(
                    price.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  percentage < 0
                      ? Text(
                          "$percentage %",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.red),
                        )
                      : Text(
                          "+ $percentage %",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.green),
                        )
                ],
              )
            ],
          ))
        ]),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(top: 20.0, bottom: 20.0, right: 10, left: 10),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 5),
                          bottom: BorderSide(width: 5),
                          right: BorderSide(width: 5),
                          left: BorderSide(width: 5)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "TradeEX",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 100,
                  alignment: Alignment.center,
                  child: Text(
                      "The world's professional digital trading currency platform",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.grey[500])),
                ),
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  "assets/images/qrCode.png",
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 100,
                    alignment: Alignment.center,
                    child: Text(
                        "Save the QR code and share it with your friends to make profit",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 20, color: Colors.grey[500])),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
