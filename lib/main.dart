import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Color.fromARGB(255, 47, 59, 79),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'Calculator',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '10x4',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.topRight,
                        child: Text(
                          '40',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          '_____',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Color.fromARGB(221, 5, 4, 26),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        drow(pic: 'AC'),
                        drow(
                            icon: Icon(
                          Icons.cancel_presentation_sharp,
                          color: Colors.white,
                        )),
                        drow(pic: '%'),
                        drow(pic: '/', color: Colors.white)
                      ],
                    ),
                    Row(
                      children: [
                        drow(pic: '7'),
                        drow(pic: '8'),
                        drow(pic: '9'),
                        drow(pic: 'x', color: Colors.white)
                      ],
                    ),
                    Row(
                      children: [
                        drow(pic: '4'),
                        drow(pic: '5'),
                        drow(pic: '6'),
                        drow(pic: '-', color: Colors.white)
                      ],
                    ),
                    Row(
                      children: [
                        drow(pic: '1'),
                        drow(pic: '2'),
                        drow(pic: '3'),
                        drow(pic: '+', color: Colors.white)
                      ],
                    ),
                    Row(
                      children: [
                        drow(pic: '<>'),
                        drow(pic: '0'),
                        drow(pic: '.'),
                        drow(pic: '=', color: Colors.yellow.shade900)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget drow({String? pic, Icon? icon, Color? color}) {
  late Widget a;
  if (pic != null) {
    a = Text(
      pic,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: color == Color.fromARGB(221, 5, 4, 26) || color == null
            ? Colors.white
            : Colors.black,
      ),
    );
  } else {
    a = icon!;
  }
  return Expanded(
    flex: 1,
    child: Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.all(10),
      child: Center(child: a),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    ),
  );
}
