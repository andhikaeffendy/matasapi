import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';

class DaftarSaya extends StatefulWidget {
  @override
  _DaftarSayaState createState() => _DaftarSayaState();
}

class _DaftarSayaState extends State<DaftarSaya> {
  List<String> litems = ["1","2","Third","4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30.0, left: 16.0, right: 16.0, bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.black38.withAlpha(10),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Pencarian",
                          hintStyle: TextStyle(
                            color: Colors.black.withAlpha(120),
                          ),
                          border: InputBorder.none,
                        ),
                        onChanged: (String keyword) {},
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.black.withAlpha(120),
                    )
                  ],
                ),
              ),SizedBox(
                height: 24.0,
              ),SizedBox(
                width: double.infinity,
                child: FlatButton(
                    color: Colors.deepPurple,
                    onPressed: () {},
                    child: Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      child: Text(
                        'Perbarui Daftar bahan saya',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    )
                ),
              ),SizedBox(
                height: 24.0,
              ),Text(
                'Resep sesuai bahan Anda',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20.0
                ),
              ),SizedBox(
                height: 8.0,
              ),GridView.builder(
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
                  }),SizedBox(
                height: 24.0,
              ),Text(
                'Lainnya',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20.0
                ),
              ),SizedBox(
                height: 8.0,
              ),GridView.builder(
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
              SizedBox(
                height: 16.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
