import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:matasapi/login.dart';
import 'package:matasapi/main.dart';

class Registrasi extends StatefulWidget {
  @override
  _RegistrasiState createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {

  listDropDown selectedJK;
  List<listDropDown> jenisKelamin = <listDropDown>[
    const listDropDown('Pria'),
    const listDropDown('Wanita')
  ];

  DateTime selectedDate = DateTime.now();
  String _date = "Not set";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0, bottom: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                'Registrasi',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
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
                    labelText: '*Nama'),
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 12.0),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.0, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                child: DropdownButton<listDropDown>(
                  isExpanded: true,
                  hint: new Text("Pilih Jenis Kelamin",
                    style: TextStyle(
                        fontSize: 12.0
                    ),),
                  value: selectedJK,
                  onChanged: (listDropDown newValue) {
                    setState(() {
                      selectedJK = newValue;
                    });
                  },
                  items: jenisKelamin.map((listDropDown user) {
                    return new DropdownMenuItem<listDropDown>(
                      value: user,
                      child: new Text(
                        user.name,
                        style: new TextStyle(color: Colors.black,fontSize: 12.0),

                      ),
                    );
                  }).toList(),
                ),
              ),SizedBox(
                height: 12.0,
              ),RaisedButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      theme: DatePickerTheme(
                        containerHeight: 210.0,
                      ),
                      showTitleActions: true,
                      minTime: DateTime(2000, 1, 1),
                      maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                        print('confirm $date');
                        _date = '${date.year} - ${date.month} - ${date.day}';
                        setState(() {});
                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.date_range,
                                  size: 18.0,
                                  color: Colors.deepPurple,
                                ),
                                Text(
                                  " $_date",
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        "  Change",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
              ),SizedBox(
                height: 12.0,
              ),TextFormField(
                decoration: new InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: new EdgeInsets.all(10.0),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    labelText: '*Nama Akun'),
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),SizedBox(
                height: 8.0,
              ),TextFormField(
                decoration: new InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: new EdgeInsets.all(10.0),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    labelText: '*Nomor Telepon'),
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),SizedBox(
                height: 8.0,
              ),TextFormField(
                decoration: new InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: new EdgeInsets.all(10.0),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    labelText: '*Email'),
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),SizedBox(
                height: 8.0,
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
                height: 8.0,
              ),TextFormField(
                obscureText: true,
                decoration: new InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: new EdgeInsets.all(10.0),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    labelText: '*Konfirmasi Password'),
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),Container(
                child: Text(
                  '*Wajib diisi',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black54,
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
                        'Kirim',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    )
                ),
              ),SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sudah punya akun? ',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      'Masuk',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.deepPurple
                      ),
                    ),
                  )
                ],
              ),SizedBox(
                height: 16.0,
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
class listDropDown {
  const listDropDown(this.name);

  final String name;
}