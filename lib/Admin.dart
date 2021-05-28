import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Admin extends StatefulWidget {
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 2, length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "UNIQUE HARDWARES",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            backgroundColor: Colors.blueGrey,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Home()));
                  },
                  icon: Icon(Icons.home))
            ],
            bottom: TabBar(
              controller: _tabController,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'PRODUCTS',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                Tab(
                  child: Text(
                    'ADD',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                Tab(
                  child: Text(
                    'ORDERS',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[product(), add(), orders()],
          )),
    );
  }

  Widget product() {
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
          Column(
            children: [
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 40.0,
                              )),
                        ],
                      ),
                      Image(
                        image: AssetImage("assets/images/penhead.jpg"),
                        height: 200,
                      ),
                      Row(
                        children: [
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
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 40.0,
                              )),
                        ],
                      ),
                      Image(
                        image: AssetImage("assets/images/penhead2.jpg"),
                        height: 150,
                      ),
                      Row(
                        children: [
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
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 40.0,
                              )),
                        ],
                      ),
                      Image(
                        image: AssetImage("assets/images/holeStud.jpg"),
                        height: 150,
                      ),
                      Row(
                        children: [
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
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 40.0,
                              )),
                        ],
                      ),
                      Image(
                        image: AssetImage("assets/images/t-nut.jpg"),
                        height: 150,
                      ),
                      Row(
                        children: [
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
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 40.0,
                              )),
                        ],
                      ),
                      Image(
                        image: AssetImage("assets/images/Dnut.jpg"),
                        height: 150,
                      ),
                      Row(
                        children: [
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
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 40.0,
                              )),
                        ],
                      ),
                      Image(
                        image: AssetImage("assets/images/flatscrew.jpg"),
                        height: 150,
                      ),
                      Row(
                        children: [
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
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 40.0,
                              )),
                        ],
                      ),
                      Image(
                        image: AssetImage("assets/images/buttonhead.jpg"),
                        height: 150,
                      ),
                      Row(
                        children: [
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

  Widget add() {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.9,
          ),
          Container(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 50.0)),
                _productname(),
                CupertinoButton(onPressed: () {}, child: Text("Chose Image")),
                _addbtn(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showDialog() {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('New Product Added!'),
            content: Icon(
              Icons.check_circle,
              size: 70,
              color: Colors.green,
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/admin');
                  },
                  child: Text('OK'))
            ],
          );
        });
  }

  Widget _addbtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.only(bottom: 10, top: 20),
          child: ElevatedButton(
            onPressed: () {
              _showDialog();
            },
            child: Text(
              " ADD",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }

  final TextEditingController productnameController = TextEditingController();

  Widget _productname() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        controller: productnameController,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            prefixIcon: Icon(
              FontAwesomeIcons.productHunt,
              color: Colors.blueGrey,
            ),
            labelText: 'Product Name'),
      ),
    );
  }

  Widget orders() {
    return Container(
      child: Text("Order Page"),
    );
  }
}
