import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> cities = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
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
                              Icons.add_circle_outline,
                              color: Color(0XFFffba37),
                              size: 24.0,
                            ),
                          ),Spacer(),
                          Container(
                            padding: EdgeInsets.only(right: 12.0),
                            child: Text(
                              'Bahan',
                              style: TextStyle(
                                  color: Color(0XFFffba37), fontSize: 16.0),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 12.0),
                            child: Text(
                              'Resep',
                              style: TextStyle(
                                  color: Color(0XFFffba37), fontSize: 16.0),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),GestureDetector(
              onTap: (){},
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromRGBO(80, 51, 198, 0.2),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Bahan Tersedia',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 16.0),
                        child: Icon(Icons.arrow_drop_down,color:Colors.white),
                      )
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

