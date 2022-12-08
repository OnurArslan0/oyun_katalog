import 'package:flutter/material.dart';

import 'data.dart';
import 'fav.dart';

void main() {
  runApp(const AppBackGr());
}

class AppBackGr extends StatelessWidget {
  const AppBackGr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const GamesPage(),
        "/fav": (context) => const FavPage(),
      },
    );
  }
}

class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  State<GamesPage> createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromRGBO(248, 248, 248, 0.92),
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            flexibleSpace: const FlexibleSpaceBar(
              titlePadding: EdgeInsets.fromLTRB(16, 0, 0, 9),
              expandedTitleScale: 1,
              title: PreferredSize(
                preferredSize: Size(double.infinity, 41),
                child: Text(
                  "Games",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 0.41,
                  ),
                ),
              ),
            ),
            expandedHeight: 140,
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 48,
              child: Container(
                color: const Color.fromRGBO(248, 248, 248, 0.92),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 6,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(142, 142, 147, 0.12),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        const SizedBox(width: 11.1),
                        const Center(
                          child: Icon(
                            Icons.search,
                            size: (20),
                            color: Color.fromRGBO(0, 0, 0, 0.36),
                          ),
                        ),
                        const SizedBox(width: 11.14),
                        Expanded(
                          child: Container(
                            height: 22,
                            child: const Center(
                              child: TextField(
                                autocorrect: false,
                                decoration: InputDecoration.collapsed(
                                    hintText: "Search for the games",
                                    hintStyle: TextStyle(letterSpacing: -0.41)),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 136,
              width: double.infinity,
              color: const Color(0xFF7446BD),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 136,
              width: double.infinity,
              color: const Color(0xFFACF483),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 136,
              width: double.infinity,
              color: const Color(0xFFE6BDBD),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 136,
              width: double.infinity,
              color: const Color(0xFF52D2ED),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 136,
              width: double.infinity,
              color: const Color(0xFFF25FFF),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 136,
              width: double.infinity,
              color: const Color(0xFFE33361),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 136,
              width: double.infinity,
              color: const Color(0xFF95E57E),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 83,
          width: double.infinity,
          child: Container(
            padding: const EdgeInsets.all(10),
            color: const Color.fromRGBO(248, 248, 248, 0.92),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 80,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                        Colors.transparent,
                      ),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.accessibility_new_rounded,
                          size: 30,
                          color: ColorSelect.blueColor,
                        ),
                        SizedBox(
                          height: 12,
                          child: Text(
                            "Games",
                            style: TextStyle(
                              color: ColorSelect.blueColor,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FavPage()),
                      );
                    },
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                        Colors.transparent,
                      ),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.star,
                          size: 30,
                          color: ColorSelect.greyColor,
                        ),
                        SizedBox(
                          height: 12,
                          child: Text(
                            "Favorites",
                            style: TextStyle(
                              color: ColorSelect.greyColor,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
