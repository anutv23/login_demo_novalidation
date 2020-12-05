import 'package:day4_workshop_login/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text("Welcome")),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                  width: 200,
                  height: 160,
                  /*decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70.0),
                      color: Colors.red,
                    ),*/
                  child: Image.asset("assets/images/logo.jpg")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                  width: 200,
                  height: 20,
                  /*decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70.0),
                      color: Colors.red,
                    ),*/
                  child: Text("Proceed with your login",style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),

                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:15,horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Icon(Icons.person,color: Colors.black,),
                Container(
                  width:320,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),

                        labelText: 'Username',
                        hintText: 'Enter valid email id'),
                  ),
                ),
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.lock,color: Colors.black,),

                Container(
                  width: 320,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter secure password'),
                  ),
                ),
              ],
            )
          ),
          FlatButton(
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.pop(context);
               // Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 120,
          ),
          Text("New User? Create Account")
        ]),
      ),
    );
  }
}













/*import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: FlatButton(
            onPressed: () {
              Navigator.pop(context);
              // Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
            },
            child: Text(
              "Welcome",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
*/