import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1E3E6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              'EPILEXA',
              style: TextStyle(
                color: Color(0xFF0075FF),
                fontWeight: FontWeight.w900,
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(
            height: 80.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 360.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0)
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Email",
                      //errorText: 'Username already exists.',
                      labelStyle: TextStyle(fontSize: 13.0)
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Password",
                      //errorText: 'Username already exists.',
                      labelStyle: TextStyle(fontSize: 13.0)
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: FlatButton(
                    child: Text(
                        'Forgot Password?',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xFF0075FF)
                      ),
                    ),
                    onPressed: (){
                      //forgot password
                    },
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: FlatButton(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    color: Color(0xFF0075FF),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 15.0),
                        child: Divider(
                          color: Colors.black,
//                          height: 50,
                        )),
                  ),
                  Text(
                    "or",
                  ),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 20.0),
                        child: Divider(
                          color: Colors.black,
//                          height: 50,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: OutlineButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage(
                            'lib/images/google.png',
                          ),
                          height: 15.0,
                          width: 15.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Sign up with Google',
                          style: TextStyle(
                            color: Color(0xFF575757)
                          ),
                        ),
                      ],
                    ),
                    color: Colors.white,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
