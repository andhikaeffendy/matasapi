import 'package:flutter/material.dart';
import 'package:matasapi/main.dart';
import 'package:matasapi/registrasi.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFba37),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 40.0, left: 24.0, right: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset('assets/Logo_ungu.png'),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                'Masuk',
                style: TextStyle(
                    fontSize: 24.0, color: Colors.deepPurple,
                fontWeight: FontWeight.bold),
              ),SizedBox(
                height: 40.0,
              ),
              TextFormField(
                decoration: new InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: new EdgeInsets.all(10.0),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    labelText: '*Email/Nama Akun'),
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),SizedBox(
                height: 16.0,
              ),TextFormField(
                obscureText: true,
                decoration: new InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: new EdgeInsets.all(10.0),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    labelText: '*Password'),
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),SizedBox(
                height: 24.0,
              ),InkWell(
                onTap: (){},
                child: Text(
                  'Lupa Password',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 16.0
                  ),
                ),
              ),SizedBox(
                height: 24.0,
              ),SizedBox(
                width: double.infinity,
                child: FlatButton(
                  color: Colors.deepPurple,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: Text(
                      'Masuk',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                ),
              ),SizedBox(
                height: 24.0,
              ),Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Buat Akun ',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Registrasi()),
                      );
                    },
                    child: Text(
                      'di sini',
                       style: TextStyle(
                         color: Colors.deepPurple
                       ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24.0,
              ),Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Masuk dengan akun ',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black
                    ),
                  ),
                  InkWell(
                    child: Text(
                      'Facebook',
                      style: TextStyle(
                        color: Colors.deepPurple
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
