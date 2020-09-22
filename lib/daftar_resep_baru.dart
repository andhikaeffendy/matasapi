import 'package:flutter/material.dart';

class DaftarResepBaru extends StatefulWidget {
  @override
  _DaftarResepBaruState createState() => _DaftarResepBaruState();
}

class _DaftarResepBaruState extends State<DaftarResepBaru> {
  String _valFriends;
  List _myFriends = [
    "Lainnya",
    "Test 1",
    "Test 2",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.deepPurple,
                padding: EdgeInsets.only(bottom: 8.0, right: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.white,
                      child: Icon(
                        Icons.close,
                        size: 20.0,
                        color: Colors.redAccent,
                      ),
                      shape: CircleBorder(),
                    ),
                    FlatButton(
                      color: Colors.yellow,
                      textColor: Colors.black,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {
                        /*...*/
                      },
                      child: Text(
                        "Selesai",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
                color: Colors.black26,
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle_outline,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text('Tambahkan Foto atau Video')
                    ],
                  ),
                ),
              ),
              Container(
                  color: Colors.deepPurple,
                  height: MediaQuery.of(context).size.height * 0.06,
                  padding: EdgeInsets.only(left: 8.0),
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Judul',
                    ),
                  )),
              SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Jenis Makanan'),
                    Container(
                      width: 100.0,
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton(
                            value: _valFriends,
                            items: _myFriends.map((value) {
                              return DropdownMenuItem(
                                child: Text(value),
                                value: value,
                              );
                            }).toList(),
                            hint: Text('Lainnya'),
                            onChanged: (value) {
                              setState(() {
                                _valFriends =
                                    value; //Untuk memberitahu _valFriends bahwa isi nya akan diubah sesuai dengan value yang kita pilih
                              });
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),SizedBox(
                height: 12.0,
              ),Container(
                height: MediaQuery.of(context).size.height*0.06,
                color: Colors.deepPurple,
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bahan',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),Text(
                      'Porsi',style: TextStyle(
                        color: Colors.white
                    ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24.0,
              ),Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Judul Pengelompokan',
                  ),
                ),
              ),SizedBox(
                height: 12.0,
              ),Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  children: [
                    Text(
                      'Bahan 1',
                    ),Spacer(),
                    Text(
                      'XX Gram'
                    ),SizedBox(
                      width: 8.0,
                    ),Icon(Icons.close)
                  ],
                ),
              ),SizedBox(
                height: 12.0,
              ),Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  children: [
                    Text(
                      'Bahan 1',
                    ),Spacer(),
                    Text(
                        'XX Gram'
                    ),SizedBox(
                      width: 8.0,
                    ),Icon(Icons.close)
                  ],
                ),
              ),SizedBox(
                height: 12.0,
              ),Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  children: [
                    Text(
                      'Bahan 1',
                    ),Spacer(),
                    Text(
                        'XX Gram'
                    ),SizedBox(
                      width: 8.0,
                    ),Icon(Icons.close)
                  ],
                ),
              ),SizedBox(
                height: 24.0,
              ),Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pengelompokkan'
                    ),SizedBox(
                      width: 8.0,
                    ),Icon(Icons.add_circle_outline),
                    SizedBox(
                      width: 24.0,
                    ),
                    Text(
                      'Bahan'
                    ),SizedBox(
                      width: 8.0,
                    ),Icon(Icons.add_circle_outline)
                  ],
                ),
              ),SizedBox(
                height: 24.0,
              ),Container(
                height: MediaQuery.of(context).size.height*0.06,
                color: Colors.deepPurple,
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cara Memasak',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),Text(
                      'Durasi',style: TextStyle(
                        color: Colors.white
                    ),
                    )
                  ],
                ),
              ),SizedBox(
                height: 24.0,
              ),Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        '1. Cara membuat'
                    ),Icon(Icons.close),
                  ],
                ),
              ),SizedBox(
                height: 24.0,
              ),Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.grey,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Foto',
                        ),
                      )
                    ),SizedBox(
                      width: 12.0,
                    ),Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.grey,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Foto',
                        ),
                      )
                    ),SizedBox(
                      width: 12.0,
                    ),Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.grey,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Foto',
                        ),
                      )
                    ),
                  ],
                ),
              ),SizedBox(
                height: 16.0,
              ),Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        '2. Cara membuat'
                    ),Icon(Icons.close),
                  ],
                ),
              ),SizedBox(
                height: 24.0,
              ),Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  children: [
                    Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.grey,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Foto',
                          ),
                        )
                    ),SizedBox(
                      width: 12.0,
                    ),Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.grey,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Foto',
                          ),
                        )
                    ),SizedBox(
                      width: 12.0,
                    ),Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.grey,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Foto',
                          ),
                        )
                    ),
                  ],
                ),
              ),SizedBox(
                height: 16.0,
              ),Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Langkah'
                  ),SizedBox(
                    width: 8.0,
                  ),Icon(
                    Icons.add_circle_outline
                  )
                ],
              ),SizedBox(
                height: 24.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
