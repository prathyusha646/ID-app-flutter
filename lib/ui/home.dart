import 'package:flutter/material.dart';
//import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
//import 'package:fluttertoast/fluttertoast.dart';

myapp1() {
  // var FlutterStatusbarcolor;
  FlutterStatusbarcolor.setStatusBarColor(Colors.grey);

  myprint() {
    print('Double click on image');
  }

  myt() {
    // ignore: non_constant_identifier_names
    var Fluttertoast;
    var Toast;
    var ToastGravity;
    Fluttertoast.showToast(
        msg: "This is Prathyusha",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.amber,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.grey.shade200,
    margin: EdgeInsets.all(20),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 3,
            ),
          ),
          margin: EdgeInsets.all(50),
          // padding: EdgeInsets.all(30),
          // padding: EdgeInsets.only(left: 70),
          alignment: Alignment.center,
          width: 350,
          height: 200,
          // color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Prathyusha',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  Text('  damarlaprathyusha30@gmail.com'),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          // onTap: myprint,
          onDoubleTap: myprint,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://github.com/prathyusha646/flutter-app-images/blob/master/Prathyu_small.PNG?raw=true',
                ),
                fit: BoxFit.cover,
              ),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.grey,
                width: 3,
              ),
            ),
            // margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            // color: Colors.blue,
            // child: Text('second'),
          ),
        ),
      ],
    ),
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('My ID Card'),
        //Icon(Icons.face),
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_a_photo), onPressed: myt),
          IconButton(icon: Icon(Icons.account_circle), onPressed: null)
        ],
      ),
      body: mybody,
    ),
  );
}

class FlutterStatusbarcolor {
  static void setStatusBarColor(MaterialColor grey) {}
}
