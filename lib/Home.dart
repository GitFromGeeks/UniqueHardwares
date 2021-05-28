import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniquehardwares/OrderNow.dart';
import 'Login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}

class _HomeState extends State<Home> {
  int cindex = 0;
  List<String> hardwares = ['D-nut', 'Jipson', 'Bolt'];
  late String filterby;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "UNIQUE HARDWARES",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.blueGrey,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Login()));
                },
                icon: Icon(
                  Icons.admin_panel_settings,
                  color: Colors.black,
                ))
          ],
        ),
        body: Stack(
          children: [
            Offstage(
              offstage: cindex != 1,
              child: TickerMode(
                enabled: cindex == 1,
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: contact(),
                ),
              ),
            ),
            Offstage(
              offstage: cindex != 0,
              child: TickerMode(
                enabled: cindex == 0,
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: catalog(),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: cindex,
          backgroundColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_outlined), label: "Shop"),
            BottomNavigationBarItem(
                icon: Icon(Icons.contacts_rounded), label: "Contact")
          ],
          selectedItemColor: Colors.white,
          onTap: (index) {
            setState(() {
              cindex = index;
            });
          },
        ),
      ),
    );
  }

  Widget contact() {
    return ListView(
      children: [
        SizedBox(
          child: Hero(
            tag: Icons.hardware,
            child: Image(
              image: AssetImage("assets/images/hardwares.jpg"),
            ),
          ),
          height: 200.0,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.userAlt,
                      size: 30.0,
                    ),
                  ),
                  Text(
                    "  Naved Husain",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.phoneAlt,
                      size: 30.0,
                    ),
                  ),
                  Text(
                    "  7055767603",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.userAlt,
                      size: 30.0,
                    ),
                  ),
                  Text(
                    "  Matloob Husain",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.phoneAlt,
                      size: 30.0,
                    ),
                  ),
                  // Text(
                  //   "Phone :- ",
                  //   style: TextStyle(
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 15.0,
                  //       decoration: TextDecoration.none),
                  // ),
                  Text(
                    "  9897555262",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.addressBook,
                      size: 30.0,
                    ),
                  ),
                  // Text(
                  //   "Shop Add :- ",
                  //   style: TextStyle(
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 15.0,
                  //       decoration: TextDecoration.none),
                  // ),
                  Text(
                    "    Diamond Colony near Prathma Bank",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "     ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        decoration: TextDecoration.none),
                  ),
                  Text(
                    "  Sambhal road Moradabad (244001) U.P",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20.0)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.facebook,
                        color: Colors.blue[900]),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.google, color: Colors.red[900]),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.whatsapp,
                        color: Colors.green[900]),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget catalog() {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              hintText: 'Search here...',
            ),
            onChanged: (string) {
              // _debouncer.run(() {
              //   setState(() {
              //     filterData = data
              //         .where((u) => (u['model']
              //                 .toLowerCase()
              //                 .contains(string.toLowerCase()) ||
              //             u['mobile']
              //                 .toLowerCase()
              //                 .contains(string.toLowerCase())))
              //         .toList();
              //   });
              // });
            },
          ),
          // DropdownButton(
          //   hint: Text(
          //     'Filter . . .',
          //     style: TextStyle(fontSize: 30.0),
          //   ),
          //   value: filterby,
          //   icon: Icon(Icons.arrow_drop_down),
          //   iconSize: 42,
          //   underline: SizedBox(),
          //   isExpanded: true,
          //   onChanged: (newValue) {
          //     // setState(() {
          //     //   bcodeController1.text = newValue;
          //     // });
          //   },
          //   items: hardwares.map((e) {
          //     return DropdownMenuItem(child: Text(e), value: e);
          //   }).toList(),
          // ),
          Column(
            children: [
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/images/penhead.jpg"),
                        height: 200,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        OrderNow()));
                              },
                              child: Text("Order Now")),
                          Padding(padding: EdgeInsets.only(right: 10.0)),
                          Text(
                            "Penhead",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20.0)),
                          Text(
                            "0.25/pcs",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/images/penhead2.jpg"),
                        height: 150,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: Text("Order Now")),
                          Padding(padding: EdgeInsets.only(right: 10.0)),
                          Text(
                            "Penhead  gold",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20.0)),
                          Text(
                            "0.25/pcs",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/images/holeStud.jpg"),
                        height: 150,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: Text("Order Now")),
                          Padding(padding: EdgeInsets.only(right: 10.0)),
                          Text(
                            "Hole Stud",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20.0)),
                          Text(
                            "0.25/pcs",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/images/t-nut.jpg"),
                        height: 150,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: Text("Order Now")),
                          Padding(padding: EdgeInsets.only(right: 10.0)),
                          Text(
                            "T-Nut",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20.0)),
                          Text(
                            "0.25/pcs",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/images/Dnut.jpg"),
                        height: 150,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: Text("Order Now")),
                          Padding(padding: EdgeInsets.only(right: 10.0)),
                          Text(
                            "D-nut",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20.0)),
                          Text(
                            "0.25/pcs",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/images/flatscrew.jpg"),
                        height: 150,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: Text("Order Now")),
                          Padding(padding: EdgeInsets.only(right: 10.0)),
                          Text(
                            "FlatScrew",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20.0)),
                          Text(
                            "0.25/pcs",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/images/buttonhead.jpg"),
                        height: 150,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: Text("Order Now")),
                          Padding(padding: EdgeInsets.only(right: 10.0)),
                          Text(
                            "ButtonHead",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20.0)),
                          Text(
                            "0.25/pcs",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
