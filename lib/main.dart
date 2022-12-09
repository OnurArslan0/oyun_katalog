import 'package:flutter/material.dart';
import 'package:katalog_app/gamebox.dart';

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

Gamebox oyun1 = Gamebox(
    oyun_ismi: "Grand Theft Auto V",
    oyun_kategorisi: "Action, shooter",
    oyun_asseti:
        "https://cdn.ntvspor.net/6733d93215d441b68945b2d381d4ba04.jpeg?mode=crop&w=940&h=626",
    oyun_puani: 96,
    oyun_favori_mi: false);
Gamebox oyun2 = Gamebox(
    oyun_ismi: "Portal 2",
    oyun_kategorisi: "Action, puzzle",
    oyun_asseti:
        "https://assets-prd.ignimgs.com/2021/12/08/portal2-1638924084230.jpg",
    oyun_puani: 95,
    oyun_favori_mi: false);
Gamebox oyun3 = Gamebox(
    oyun_ismi: "The Witcher 3: Wild Hunt",
    oyun_kategorisi: "Action, puzzle",
    oyun_asseti:
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c78bc3fc-9f08-47ca-81ae-d89055c7ec49/d8p7j8m-978d944f-b106-413d-9e7b-18fc7875b47c.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2M3OGJjM2ZjLTlmMDgtNDdjYS04MWFlLWQ4OTA1NWM3ZWM0OVwvZDhwN2o4bS05NzhkOTQ0Zi1iMTA2LTQxM2QtOWU3Yi0xOGZjNzg3NWI0N2MucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.YKJZ24xa3NeCKchv4M8bc3mMBqCjJtto3TRQl57XeJY",
    oyun_puani: 95,
    oyun_favori_mi: false);
Gamebox oyun4 = Gamebox(
    oyun_ismi: "Left 4 Dead 2",
    oyun_kategorisi: "Action, puzzle",
    oyun_asseti: "https://www.rabisu.com/images/lf4d2-banner.png",
    oyun_puani: 89,
    oyun_favori_mi: false);
Gamebox oyun5 = Gamebox(
    oyun_ismi: "Metin 2",
    oyun_kategorisi: "MMORPG, fantasy",
    oyun_asseti:
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b1f444f5-ca6c-4df3-8c44-ec6e0276f5ac/d75ftwe-64e5cbcb-25c0-4ce7-8d25-27e6dfe9d475.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2IxZjQ0NGY1LWNhNmMtNGRmMy04YzQ0LWVjNmUwMjc2ZjVhY1wvZDc1ZnR3ZS02NGU1Y2JjYi0yNWMwLTRjZTctOGQyNS0yN2U2ZGZlOWQ0NzUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.T_DRzhYfLsN_f2AJxHnU73dcbQ4qS7Eab_pR3gZAqis",
    oyun_puani: 74,
    oyun_favori_mi: false);
Gamebox oyun6 = Gamebox(
    oyun_ismi: "Skyrim",
    oyun_kategorisi: "Role-Playing, action",
    oyun_asseti:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH_WYthI3zYwCzOMLJGF7JrlZEd_7Q2z9n2w&usqp=CAU",
    oyun_puani: 94,
    oyun_favori_mi: false);
Gamebox oyun7 = Gamebox(
    oyun_ismi: "Dying Light",
    oyun_kategorisi: "Horror, survival",
    oyun_asseti:
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/46b63d3c-ae67-464c-9a37-670829b2a157/d9egl19-7a42067d-8fe2-4d93-b8a1-934f05143a07.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzQ2YjYzZDNjLWFlNjctNDY0Yy05YTM3LTY3MDgyOWIyYTE1N1wvZDllZ2wxOS03YTQyMDY3ZC04ZmUyLTRkOTMtYjhhMS05MzRmMDUxNDNhMDcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.xrkPKNprljhh1dmqPmawPPdqgT8ciTV0afyOyRWnbk0",
    oyun_puani: 75,
    oyun_favori_mi: false);
List<Gamebox> oyun_listesi = <Gamebox>[
  oyun1,
  oyun2,
  oyun3,
  oyun4,
  oyun5,
  oyun6,
  oyun7
]; //Gamebox tipinde tanımladığımız oyunların listesi

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
            // Search Bar tasarımı ve dizaynı
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
          SliverList(
              //Gamebox tipinde oluşturulan verilerin ekrana liste üzerinden oluşturulması ve ekrana gösterilmesi
              delegate: SliverChildBuilderDelegate((context, index) {
            final oyun = oyun_listesi[index];
            return MaterialButton(
              color: Colors.grey,
              onPressed: () {
                print("buton ${index + 1} e basıldı basildi.");
              },
              child: Container(
                height: 136,
                padding: EdgeInsets.all(16),
                width: double.infinity,
                color: Color.fromRGBO(255, 255, 255, 1),
                child: Row(children: [
                  Image.network(
                    oyun.oyun_asseti,
                    height: 120,
                    width: 104,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            oyun.oyun_ismi,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(text: "metacritic: "),
                              TextSpan(
                                text: "${oyun.oyun_puani}",
                                style: TextStyle(
                                    color: Color.fromRGBO(216, 0, 0, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                        Text(
                          oyun.oyun_kategorisi,
                          style: TextStyle(
                              color: Color.fromRGBO(138, 138, 143, 1)),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            );
          }, childCount: oyun_listesi.length)),
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
