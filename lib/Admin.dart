import 'package:flutter/material.dart';
import 'Home.dart';

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
    return Scaffold(
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
        ));
  }

  Widget product() {
    return Center(
      child: Text("Product Page"),
    );
  }

  Widget add() {
    return Center(
      child: Text("add Page"),
    );
  }

  Widget orders() {
    return Center(
      child: Text("orders Page"),
    );
  }
}
