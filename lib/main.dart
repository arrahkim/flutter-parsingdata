import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Card & Parsing Data',
    home: HalSatu(),
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Card & Parsing Data'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(icon: Icons.camera_enhance, teks: 'Camera', warnaIcon: Colors.blue,),
            MyCard(icon: Icons.movie_filter, teks: 'Movie', warnaIcon: Colors.black,),
            MyCard(icon: Icons.headset_mic, teks: 'Music', warnaIcon: Colors.yellow,),
            MyCard(icon: Icons.flag, teks: 'Flag', warnaIcon: Colors.purple,),
            MyCard(icon: Icons.favorite, teks: 'Love', warnaIcon: Colors.red,),
            
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.icon, this.teks, this.warnaIcon});
  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      child: Card(
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 70,
              color: warnaIcon,
            ),
            Text(
              teks,
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
