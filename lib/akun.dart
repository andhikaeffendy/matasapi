import 'package:flutter/material.dart';

class AkunSaya extends StatefulWidget {
  @override
  _AkunSayaState createState() => _AkunSayaState();
}

class _AkunSayaState extends State<AkunSaya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30.0, left: 16.0, right: 16.0, bottom: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.deepPurpleAccent,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage('https://i.ytimg.com/vi/hgXeeo2sORc/maxresdefault.jpg'),
                    ),
                  ),SizedBox(
                    width: 16.0,
                  ),Text(
                    'Yatogami xxx',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold
                    ),
                  ),SizedBox(
                    width: 16.0,
                  ),Icon(
                    Icons.edit,
                    color: Colors.deepPurpleAccent,
                    size: 24.0,
                  )
                ],
              ),SizedBox(
                height: 24.0,
              ),Text(
                'Jondoe@email.com',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),SizedBox(
                height: 10.0,
              ),Text(
                '+62 8219 811 3362',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),SizedBox(
                height: 10.0,
              ),Text(
                'Ganti password',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),SizedBox(
                height: 10.0,
              ),Text(
                'Bahasa',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),SizedBox(
                height: 10.0,
              ),GestureDetector(
                child: Text(
                  'FAQ',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.deepPurpleAccent
                  ),
                ),
              ),SizedBox(
                height: 10.0,
              ),GestureDetector(
                child: Text(
                  'Tentang Kami',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.deepPurpleAccent
                  ),
                ),
              ),SizedBox(
                height: 10.0,
              ),GestureDetector(
                child: Text(
                  'Keluar',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.deepPurpleAccent
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
