import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderNow extends StatefulWidget {
  @override
  _OrderNowState createState() => _OrderNowState();
}

class _OrderNowState extends State<OrderNow> {
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController phonenumberController =
      new TextEditingController();

  final TextEditingController addressController = new TextEditingController();

  final TextEditingController qtyController = new TextEditingController();
  final TextEditingController companyController = new TextEditingController();

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
      ),
      body: SingleChildScrollView(
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
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Hardware Name",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  _name(),
                  _phonenumber(),
                  _qty(),
                  _company(),
                  _address(),
                  _orderbtn(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showDialog() {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Order Received !'),
            content: Text('We will get back to you !'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  child: Text('OK'))
            ],
          );
        });
  }

  Widget _phonenumber() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp('[0-9]')),
          LengthLimitingTextInputFormatter(10)
        ],
        controller: phonenumberController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.phone,
              color: Color(0xff2470c7),
            ),
            labelText: 'Phone No.'),
      ),
    );
  }

  Widget _qty() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp('[0-9]')),
          LengthLimitingTextInputFormatter(10)
        ],
        controller: qtyController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.stacked_bar_chart,
              color: Color(0xff2470c7),
            ),
            labelText: 'Quantity'),
      ),
    );
  }

  Widget _name() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        controller: nameController,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            prefixIcon: Icon(
              FontAwesomeIcons.userAlt,
              color: Color(0xff2470c7),
            ),
            labelText: 'Name'),
      ),
    );
  }

  Widget _address() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        controller: addressController,
        keyboardType: TextInputType.streetAddress,
        decoration: InputDecoration(
            prefixIcon: Icon(
              FontAwesomeIcons.addressCard,
              color: Color(0xff2470c7),
            ),
            labelText: 'Address'),
      ),
    );
  }

  Widget _company() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        controller: companyController,
        keyboardType: TextInputType.streetAddress,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.supervised_user_circle_rounded,
              color: Color(0xff2470c7),
            ),
            labelText: 'M/S Company'),
      ),
    );
  }

  Widget _orderbtn() {
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
              " ORDER",
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
}
