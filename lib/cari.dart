import 'package:flutter/material.dart';
import 'package:matasapi/detail_cari.dart';

class Cari extends StatefulWidget {
  @override
  _CariState createState() => _CariState();
}

class _CariState extends State<Cari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30.0, bottom: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailCari()),
                );},
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height*0.20,
                      child: Image.network('https://www.nibble.id/wp-content/uploads/2017/04/makanan-enak-di-bogor-01.jpg',fit: BoxFit.fill,),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      margin: EdgeInsets.only(left: 16.0,bottom: 8.0),
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.yellow,
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text(
                          'Menu Utama',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 16.0
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    )
                  ],
                ),
              ),SizedBox(
                height: 24.0,
              ),GestureDetector(
                onTap: (){},
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height*0.20,
                      child: Image.network('https://www.nibble.id/wp-content/uploads/2017/04/makanan-enak-di-bogor-01.jpg',fit: BoxFit.fill,),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      margin: EdgeInsets.only(left: 16.0,bottom: 8.0),
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.yellow,
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text(
                          'Cemilan',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 16.0
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    )
                  ],
                ),
              ),SizedBox(
                height: 12.0,
              ),GestureDetector(
                onTap: (){},
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height*0.20,
                      child: Image.network('https://www.nibble.id/wp-content/uploads/2017/04/makanan-enak-di-bogor-01.jpg',fit: BoxFit.fill,),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      margin: EdgeInsets.only(left: 16.0,bottom: 8.0),
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.yellow,
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text(
                          'Untuk Anak',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 16.0
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    )
                  ],
                ),
              ),SizedBox(
                height: 12.0,
              ),GestureDetector(
                onTap: (){},
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height*0.20,
                      child: Image.network('https://www.nibble.id/wp-content/uploads/2017/04/makanan-enak-di-bogor-01.jpg',fit: BoxFit.fill,),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      margin: EdgeInsets.only(left: 16.0,bottom: 8.0),
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.yellow,
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text(
                          'Vegetarian',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 16.0
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    )
                  ],
                ),
              ),SizedBox(
                height: 12.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
