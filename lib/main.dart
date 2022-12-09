import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GameDescp(),
    );
  }
}

class GameDescp extends StatefulWidget {
  const GameDescp({Key? key}) : super(key: key);

  @override
  State<GameDescp> createState() => _GameDescpState();
}

class _GameDescpState extends State<GameDescp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Color.fromRGBO(255, 255, 255, 0.92),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.network(
                "https://cdn.ntvspor.net/6733d93215d441b68945b2d381d4ba04.jpeg?mode=crop&w=940&h=626",
                height: 291,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
                      child: Text(
                        "Game Description",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Text(
                          "Rockstar Games went bigger, since their previous installment of the series. You get the complicated and realistic world-building "
                          "from Liberty City of GTA4 in the setting of lively and diverse Los Santos, from an old fan favorite GTA San Andreas. 561 different vehicles (including every transport you can operate)...."),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  MaterialButton(
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                    onPressed: () {},
                    child: Container(
                      width: double.infinity,
                      child: Text("Visit reddit"),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Container(
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                      child: Text("Visit website"),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
