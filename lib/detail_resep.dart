import 'package:flutter/material.dart';

class DetailResep extends StatefulWidget {
  @override
  _DetailResepState createState() => _DetailResepState();
}

class _DetailResepState extends State<DetailResep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: Image.network(
                      'https://www.nibble.id/wp-content/uploads/2017/04/makanan-enak-di-bogor-01.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.deepPurpleAccent,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 16.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Color(0XFFffba37),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Text(
                              'Gudeg Jogja',
                              style: TextStyle(
                                  color: Color(0XFFffba37), fontSize: 16.0),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.only(right: 12.0),
                            child: Text(
                              'oleh : Mata Sapi',
                              style: TextStyle(
                                  color: Color(0XFFffba37), fontSize: 16.0),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(80, 51, 198, 0.2),
              ),
              child: Container(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Bahan',
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kemiri',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Text(
                        'xxx butir',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Telur Ayam',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Text(
                        'xxx butir',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daging Sapi',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Text(
                        'xxx butir',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            FlatButton(
                color: Colors.deepPurple,
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Text(
                    'Masak Menu Ini',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                )),
            SizedBox(
              height: 16.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(80, 51, 198, 0.2),
              ),
              child: Container(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Cara Memasak',
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                children: [
                  Container(
                    child: Text(
                        '1. Cincang Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
                  ),SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    child: Text(
                        '1. Cincang Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    child: Text(
                        '1. Cincang Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    child: Text(
                        '1. Cincang Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
                  ),
                ],
              ),
            ),SizedBox(
              height: 16.0,
            ),Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(80, 51, 198, 0.2),
              ),
              child: Container(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Komentar',
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.start,
                ),
              ),
            ),SizedBox(
              height: 16.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Tulis komentar anda...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.amber,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),SizedBox(
              height: 16.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Cheff XX',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '4/5',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      color: Colors.deepPurple
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'Cincang Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                style: TextStyle(
                    fontSize: 16.0,
                ),
              ),
            ),SizedBox(
              height: 16.0,
            ),Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Cheff XX',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '4/5',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'Cincang Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
