import 'package:flutter/material.dart';
import 'Admin.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54,
                // color: Color(0xff2470c7),
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(70),
                  bottomRight: const Radius.circular(70),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 40.0)),
                  _buildLogo(),
                  Padding(padding: EdgeInsets.only(top: 40.0)),
                  _buildContainer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 70),
          child: Text(
            "Unique Hardwares",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }

  Widget _userName() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        controller: nameController,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_circle,
              color: Color(0xff2470c7),
            ),
            labelText: "User Name"),
      ),
    );
  }

  Widget _password() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        controller: passwordController,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: Color(0xff2470c7),
            ),
            labelText: "Password"),
      ),
    );
  }

  final snackBar =
      SnackBar(content: Text("Invalid !", style: TextStyle(color: Colors.red)));

  Widget _loginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1.4 * ((MediaQuery.of(context).size.height) / 25),
          width: 5 * ((MediaQuery.of(context).size.width) / 15),
          margin: EdgeInsets.only(top: 10, bottom: 20),
          child: ElevatedButton(
            child: Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 50,
              ),
            ),
            onPressed: () {
              if (nameController.text == "Naved" &&
                  passwordController.text == "naved@123") {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Admin()));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
          ),
        )
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 50,
                      ),
                    ),
                  ],
                ),
                _userName(),
                _password(),
                _loginButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
