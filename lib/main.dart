import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NetNinja(),
    ));

class NetNinja extends StatefulWidget {
  NetNinja({Key? key}) : super(key: key);

  @override
  State<NetNinja> createState() => _MyAppState();
}

class _MyAppState extends State<NetNinja> {
  int count =0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(child: Text("This is Flutter App")),
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){count+=1;},
        child:Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/tushar.jpg'),
                radius: 100.0,
                backgroundColor: Colors.orange,
              ),
            ),
            Text(
              "Name",
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Tushar Gupta",
              style: TextStyle(color: Colors.yellow, fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Text(
              "Current Level",
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "$count",
              style: TextStyle(color: Colors.yellow, fontSize: 20.0),
            ),
            SizedBox(height: 10.0,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.email,color: Colors.grey[500],),
                  SizedBox(width: 5.0,),
                  Text("gtushar697@gmail.com",style: TextStyle(color: Colors.white,fontSize: 17.0),)

                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
