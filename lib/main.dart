import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: Porfolio(),
    );
  }
}

class Porfolio extends StatefulWidget {
  @override
  _PorfolioState createState() => _PorfolioState();
}

class _PorfolioState extends State<Porfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
        title: Text("Porfolio"),
        backgroundColor: Color(0xff753a88),
        elevation: 3,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.topCenter,
              colors: [
                Color(0xff753a88),
                Color(0xffbdc3c7),
              ],
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    child: CircleAvatar(
                      radius: 65,
                      child: ClipOval(
                        child: Image.network(
                          'https://avatars.githubusercontent.com/u/59289184?v=4',
                        ),
                      ),
                    ),
                  ),
                ),
                Subtitle(title: "Hello,there", size: 30, color: Colors.white),
                Subtitle(
                  title: "I'm Wesley",
                  color: Colors.white,
                  size: 20,
                ),
                ReusableCard(
                  title: "Ezemikey12@gmail.com",
                  icon: Icon(
                    Icons.email,
                  ),
                  size: 20,
                  style: FontStyle.italic,
                ),
                ReusableCard(
                  title: "+234 8105692357",
                  icon: Icon(Icons.phone),
                  size: 20,
                  style: FontStyle.italic,
                ),
                ReusableCard(
                  title: "https://github.com/wesley-codes",
                  icon: Icon(Icons.link),
                  size: 19,
                  style: FontStyle.italic,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "A frontend software developer who constantly seeks out innovative solutions to everyday problems. I've honed my analytical thinking and collaboration skills, and I love working with a team ",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.0, 4.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.topCenter,
                      colors: [
                        Color(0xff753a88),
                        Color(0xffbdc37),
                      ],
                    ),
                  ),
                ),
                Text(
                  "TECHNOLOGIES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.0, 4.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.remove),
                        title: Subtitle(
                          title: "HTML",
                          size: 20,
                          weight: FontWeight.w700,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.remove),
                        title: Subtitle(
                          title: "CSS",
                          size: 20,
                          weight: FontWeight.w700,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.remove),
                        title: Subtitle(
                          title: "JavaScript",
                          size: 20,
                          weight: FontWeight.w700,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.remove),
                        title: Subtitle(
                          title: "Flutter & Dart",
                          size: 20,
                          weight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Icon icon;
  final String title;
  final FontStyle style;
  final double size;

  const ReusableCard({
    Key key,
    this.icon,
    this.title,
    this.style,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        margin: EdgeInsets.only(top: 20),
        child: ListTile(
          trailing: icon,
          leading: (Text(title,
              style: TextStyle(
                fontSize: size,
                fontStyle: style,
              ))),
        ));
  }
}

class Subtitle extends StatelessWidget {
  final String title;
  final double size;
  final Color color;
  final FontStyle style;
  final FontWeight weight;
  const Subtitle({this.title, this.size, this.color, this.style, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.left,
      style: TextStyle(
          color: color, fontSize: size, fontStyle: style, fontWeight: weight),
    );
  }
}
