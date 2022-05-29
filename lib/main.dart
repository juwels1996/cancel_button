import 'package:date_time_compare/warning_cancel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Warning()));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    DateTime dt1 = DateTime.parse("2021-12-23 11:47:00");
    DateTime dt2 = DateTime.parse("2018-02-27 10:09:00");

    return Scaffold(
        appBar: AppBar(
          title: Text("Compare date"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Text(
              "DT 1 ------ " + dt1.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "DT 2-------- " + dt2.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),

            // Text(dt1.isAfter(dt2)?"DT1 is after DT2":"DT1 is not after DT2",style: TextStyle(fontWeight: FontWeight.bold),),
            Container(
                child: dt1.isBefore(dt2)
                    ? Container()
                    : Container(
                        child: CoolButton(
                        color3: Colors.orangeAccent,
                        color2: Colors.orangeAccent,
                        color1: Colors.orangeAccent,
                        text: "This is warning Message",
                        textColor: Colors.teal,
                      ))),
          ]),
        ));
  }
}

class CoolButton extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  final String text;
  Color? textColor;
  IconData? icon;

  CoolButton(
      {required this.color1,
      required this.color2,
      required this.color3,
      required this.text,
      this.textColor,
      this.icon});

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(colors: [color1, color2, color3])),
      child: Container(
        height: 70,
        width: 330,
        // height: _mediaquery.size.height/20 ,
        // width: _mediaquery.size.width *0.1,
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.warning_sharp,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: textColor,
                    fontSize: 18),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cancel,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
