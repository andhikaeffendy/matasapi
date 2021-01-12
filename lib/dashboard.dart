import 'package:flutter/material.dart';
import 'package:matasapi/daftar_resep_baru.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool _isVisibleResep = false;
  bool _isVisibleList = true;
  bool _isVisibleBahan = false;

  void showResep() {
    setState(() {
      if (!_isVisibleResep) {
        _isVisibleList = false;
        _isVisibleResep = true;
        _isVisibleBahan = false;
      }
    });
  }

  void showBahan() {
    setState(() {
      if (!_isVisibleBahan) {
        _isVisibleResep = false;
        _isVisibleBahan = true;
        _isVisibleList = true;
      }
    });
  }

  void showToast(){
    setState(() {
      _isVisibleBahan = !_isVisibleBahan;
    });
  }

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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                              if (_isVisibleResep == true) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DaftarResepBaru()),
                                );
                              }
                              //Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.add_circle_outline,
                              color: Color(0XFFffba37),
                              size: 24.0,
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              showBahan();
                            },
                            child: Container(
                              padding: EdgeInsets.only(right: 12.0),
                              child:
                              _isVisibleBahan ?
                              Text(
                                'Bahan',
                                style: TextStyle(
                                    color: Color(0XFFffba37), fontSize: 16.0),
                                textAlign: TextAlign.start,
                              ) :
                              Text(
                                'Bahan',
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 16.0),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showResep();
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => DaftarResepBaru()),
                              // );
                            },
                            child: Container(
                              padding: EdgeInsets.only(right: 12.0),
                              child:
                              _isVisibleResep ?
                              Text(
                                'Resep',
                                style: TextStyle(
                                    color: Color(0XFFffba37), fontSize: 16.0),
                                textAlign: TextAlign.start,
                              ) :
                              Text(
                                'Resep',
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 16.0),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Visibility(
              visible: _isVisibleList,
              child: GestureDetector(
              onTap: () {
                showToast();
              },
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
                        child: Icon(Icons.arrow_drop_down, color: Colors.white),
                      )
                    ],
                  )),
            )),
            Visibility(
              visible: _isVisibleBahan,

              child: Container(
                padding: EdgeInsets.only(left: 16.0, top: 8.0),
                margin: EdgeInsets.only(right: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Agar agar"),
                    Text("Agar agar"),
                    Text("Agar agar"),
                    Align(
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                          color: Color(0XFFFFba37),
                          onPressed: () {},
                          child: Container(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Text(
                              'cari resep',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
            Visibility(
              visible: _isVisibleResep,
              child: Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Resep Anda',
                      style:
                          TextStyle(color: Colors.deepPurple, fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    GridView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4.0, color: Colors.deepPurple),
                              ),
                              margin: EdgeInsets.only(bottom: 8.0, right: 8.0),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    child: Image.network(
                                        'https://www.nibble.id/wp-content/uploads/2017/04/makanan-enak-di-bogor-01.jpg'),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 4.0),
                                      width: double.infinity,
                                      color: Colors.yellow,
                                      child: Text(
                                        'Makanan Saya',
                                        style:
                                            TextStyle(color: Colors.deepPurple),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
