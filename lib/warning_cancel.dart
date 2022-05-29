import 'package:flutter/material.dart';

class Warning extends StatefulWidget {
  const Warning({Key? key}) : super(key: key);

  @override
  State<Warning> createState() => _WarningState();
}

class _WarningState extends State<Warning> {
  bool iconss=true;
  @override
  Widget build(BuildContext context) {
    DateTime dt1 = DateTime.parse("2021-12-23 11:47:00");
    DateTime dt2 = DateTime.parse("2018-02-27 10:09:00");
    return Scaffold(
      appBar: AppBar(
        title: Text("edgfsh"),
      ),
      body: Column(
        children: [
          iconss == true ?
          Container(
            // child: dt1.isAfter(dt2)? Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                height: 70,
                width: 330,

                // height: _mediaquery.size.height/20 ,
                // width: _mediaquery.size.width *0.1,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
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
                      child: Text("This is warning message",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          iconss = false;
                        });
                      },
                      icon: const Icon(
                        Icons.cancel,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            // ):
            //     Container()
          ) : Container()
        ],
      ),

    );
  }
}
