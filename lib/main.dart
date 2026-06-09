import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: Text("Ninja ID Card", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },

        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add, color: Colors.grey[200]),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/ninja.jpg"),
                radius: 40,
              ),
            ),
            Divider(height: 60, color: Colors.grey[700]),
            Text(
              "NAME",
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              "Harshita",
              style: TextStyle(
                color: Colors.amber[300],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              "$ninjaLevel",
              style: TextStyle(
                color: Colors.amber[300],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(Icons.email, color: Colors.grey),
                SizedBox(width: 10),
                Text(
                  "hermoneydulawat@gmail.com",
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
