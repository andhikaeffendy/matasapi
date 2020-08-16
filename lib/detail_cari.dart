import 'package:flutter/material.dart';

class DetailCari extends StatefulWidget {
  @override
  _DetailCariState createState() => _DetailCariState();
}

class _DetailCariState extends State<DetailCari> {
  List<String> litems = ["1","2","Third","4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30.0, bottom: 8.0),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height*0.25,
                      child: Image.network('https://www.nibble.id/wp-content/uploads/2017/04/makanan-enak-di-bogor-01.jpg',fit: BoxFit.fill,),
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
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Color(0XFFffba37),
                              ),
                            ),Container(
                              padding: EdgeInsets.only(left: 12.0),
                              child: Text(
                                'Menu Utama',
                                style: TextStyle(
                                    color: Color(0XFFffba37),
                                    fontSize: 16.0
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),SizedBox(
                height: 24.0,
              ),Container(
                margin: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Resep Sesuai bahan anda',
                  style: TextStyle(
                      color: Color(0XFF5033C6),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),SizedBox(
                height: 8.0,
              ),Container(
                margin: EdgeInsets.only(left: 16.0,right: 16.0),
                child: GridView.builder(
                    itemCount: litems.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2
                    ),
                    itemBuilder: (context, index){
                      return GestureDetector(
                        onTap: (){},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 4.0,
                                color: Colors.deepPurple
                            ),
                          ),
                          margin: EdgeInsets.only(bottom: 8.0, right: 8.0),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                child: Image.network('https://www.nibble.id/wp-content/uploads/2017/04/makanan-enak-di-bogor-01.jpg'),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 4.0),
                                  width: double.infinity,
                                  color: Colors.yellow,
                                  child: Text(
                                    'Makanan Saya',
                                    style: TextStyle(
                                        color: Colors.deepPurple
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),SizedBox(
                height: 24.0,
              ),Container(
                margin: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Lainnya',
                  style: TextStyle(
                      color: Color(0XFF5033C6),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),SizedBox(
                height: 8.0,
              ),Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: GridView.builder(
                    itemCount: litems.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2
                    ),
                    itemBuilder: (context, index){
                      return GestureDetector(
                        onTap: (){},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 4.0,
                                color: Colors.deepPurple
                            ),
                          ),
                          margin: EdgeInsets.only(bottom: 8.0, right: 8.0),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                child: Image.network('https://www.nibble.id/wp-content/uploads/2017/04/makanan-enak-di-bogor-01.jpg'),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 4.0),
                                  width: double.infinity,
                                  color: Colors.yellow,
                                  child: Text(
                                    'Makanan Saya',
                                    style: TextStyle(
                                        color: Colors.deepPurple
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
