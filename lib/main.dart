import 'package:flutter/material.dart';

import 'Gamebox.dart';
import 'data.dart';
import 'fav.dart';

void main() {
  runApp(const AppBackGr());
}

//oyun listesi için kullandığımız index değişkeni
int global_index = 0;
//Gamebox tipinde tanımladığımız favorilerin listesi
List<Gamebox> favori = [];
//Favori listemizi oluşturmak ve güncellemek için yazdığımız fonksiyonumuz.Bu fonksiyonu birkaç yerde kullanıyoruz.
//Parametre olarak oyunlistemizi ve favori listemizi alıyor.
void favori_list_guncelle(List<Gamebox> oyunlistemiz, List<Gamebox> favori) {
  //Bu döngümüzün içinde oyun listemizin uzunluğu kadar dönüp gerekli kontrolleri yapıp favori listemizi güncelliyor.
  for (int i = 0; i < oyunlistemiz.length; i++) {
    int s = 1;
    //Buradaki if'in içinde anlık incelenen oyunun favori olma durumu true ise döngümüze giriyor..
    if (oyunlistemiz[i].oyun_favori_mi == true) {
      //Favori olma durumu true olan oyunumuz aynı zamanda favori listemizde var mı diye kontrolünü yapıyoruz
      for (int k = 0; k < favori.length; k++) {
        //Eğer eklenmek istenen oyun daha önce favori listemizde varsa s değerini 0 a eşitliyoruz ve ekleme gerçekleşmiyo.
        if (oyunlistemiz[i].oyun_ismi == favori[k].oyun_ismi) {
          s = 0;
        }
      }
      //listemizde olmayan ve favori olma durumu true olan oyunları favori listemize ekliyoruz.
      if (s == 1) {
        favori.add(oyunlistemiz[i]);
      }
    }
    //Eğer oyunumuzun favori durumu false ise ve daha önce listemizde var ise listeden siliyoruz.
    if (oyunlistemiz[i].oyun_favori_mi == false) {
      favori.remove(oyunlistemiz[i]);
    }
  }
}

//Uygulamamızda kullanacağımız tüm oyunların tek tek bilgilerini burada veriyoruz.
Gamebox oyun1 = Gamebox(
  oyun_ismi: "Grand Theft Auto V",
  oyun_kategorisi: "Action, shooter",
  oyun_asseti:
      "https://cdn.ntvspor.net/6733d93215d441b68945b2d381d4ba04.jpeg?mode=crop&w=940&h=626",
  oyun_puani: 96,
  oyun_favori_mi: false,
  reddit_asseti: "https://www.reddit.com/r/GrandTheftAutoV/",
  website_asseti: "https://www.rockstargames.com/gta-v",
  oyun_tanitimi:
      "Grand Theft Auto V is an action-adventure game played from either a third-person or first-person perspective. Players complete missions—linear scenarios with set objectives—to progress through the story. Outside of the missions, players may freely roam the open world.",
);
Gamebox oyun2 = Gamebox(
  oyun_ismi: "Portal 2",
  oyun_kategorisi: "Action, puzzle",
  oyun_asseti:
      "https://assets-prd.ignimgs.com/2021/12/08/portal2-1638924084230.jpg",
  oyun_puani: 95,
  oyun_favori_mi: false,
  reddit_asseti: "https://www.reddit.com/r/Portal/",
  website_asseti: "https://www.thinkwithportals.com/about.php",
  oyun_tanitimi:
      "Portal 2 is a first-person perspective puzzle game. The player takes the role of Chell in the single-player campaign, as one of two robots—Atlas and P-Body—in the cooperative campaign, or as a simplistic humanoid icon in community-developed puzzles.",
);
Gamebox oyun3 = Gamebox(
  oyun_ismi: "The Witcher 3: Wild Hunt",
  oyun_kategorisi: "Action, puzzle",
  oyun_asseti:
      "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c78bc3fc-9f08-47ca-81ae-d89055c7ec49/d8p7j8m-978d944f-b106-413d-9e7b-18fc7875b47c.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2M3OGJjM2ZjLTlmMDgtNDdjYS04MWFlLWQ4OTA1NWM3ZWM0OVwvZDhwN2o4bS05NzhkOTQ0Zi1iMTA2LTQxM2QtOWU3Yi0xOGZjNzg3NWI0N2MucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.YKJZ24xa3NeCKchv4M8bc3mMBqCjJtto3TRQl57XeJY",
  oyun_puani: 95,
  oyun_favori_mi: false,
  reddit_asseti: "https://www.reddit.com/r/Witcher3/",
  website_asseti: "https://www.thewitcher.com/en/witcher3#undefined",
  oyun_tanitimi:
      "The Witcher 3: Wild Hunt is an action role-playing game with a third-person perspective. Players control Geralt of Rivia, a monster slayer known as a Witcher. Geralt walks, runs, rolls and dodges, and (for the first time in the series) jumps, climbs and swims.",
);
Gamebox oyun4 = Gamebox(
  oyun_ismi: "Left 4 Dead 2",
  oyun_kategorisi: "Action, puzzle",
  oyun_asseti: "https://www.rabisu.com/images/lf4d2-banner.png",
  oyun_puani: 89,
  oyun_favori_mi: true,
  reddit_asseti: "https://www.reddit.com/r/l4d2/",
  website_asseti: "https://www.l4d.com/game.html",
  oyun_tanitimi:
      "Description. From Valve® — creators of Counter-Strike®, Half-Life®, Portal™ and Team Fortress® — Left 4 Dead™ 2 is a game that casts up to four 'Survivors' in an epic struggle against hordes of swarming zombies and terrifying 'Boss Infected' mutants.",
);
Gamebox oyun5 = Gamebox(
  oyun_ismi: "Metin 2",
  oyun_kategorisi: "MMORPG, fantasy",
  oyun_asseti:
      "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b1f444f5-ca6c-4df3-8c44-ec6e0276f5ac/d75ftwe-64e5cbcb-25c0-4ce7-8d25-27e6dfe9d475.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2IxZjQ0NGY1LWNhNmMtNGRmMy04YzQ0LWVjNmUwMjc2ZjVhY1wvZDc1ZnR3ZS02NGU1Y2JjYi0yNWMwLTRjZTctOGQyNS0yN2U2ZGZlOWQ0NzUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.T_DRzhYfLsN_f2AJxHnU73dcbQ4qS7Eab_pR3gZAqis",
  oyun_puani: 74,
  oyun_favori_mi: false,
  reddit_asseti: "https://www.reddit.com/r/Metin2/",
  website_asseti: "https://gameforge.com/tr-TR/play/metin2",
  oyun_tanitimi:
      "Metin2 is a 3D fantasy MMORPG where players choose from one of five classes and join one of three kingdoms to fight for dominance on a sprawling continent. Fight legions of mobs, complete quests, and duel other players with an active combat system. Pros: +Hack and slash combat.",
);
Gamebox oyun6 = Gamebox(
  oyun_ismi: "The Elder Scrolls V: Skyrim",
  oyun_kategorisi: "Role-Playing, action",
  oyun_asseti:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH_WYthI3zYwCzOMLJGF7JrlZEd_7Q2z9n2w&usqp=CAU",
  oyun_puani: 94,
  oyun_favori_mi: false,
  reddit_asseti: "https://www.reddit.com/r/skyrim/",
  website_asseti: "https://elderscrolls.bethesda.net/en/skyrim",
  oyun_tanitimi:
      "The Elder Scrolls V: Skyrim is an action role-playing game, playable from either a first- or third-person perspective. The player may freely roam over the land of Skyrim, an open world environment consisting of wilderness expanses, dungeons, caves, cities, towns, fortresses, and villages.",
);
Gamebox oyun7 = Gamebox(
  oyun_ismi: "Dying Light 2",
  oyun_kategorisi: "Horror, survival",
  oyun_asseti:
      "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/i/3367fa99-0ba6-454c-b947-683f1a9f896d/ddvjouf-f7f4076c-b30a-43b6-b34f-a2b796cdab2f.png",
  oyun_puani: 75,
  oyun_favori_mi: true,
  reddit_asseti: "https://www.reddit.com/r/dyinglight/",
  website_asseti: "https://dyinglightgame.com/",
  oyun_tanitimi:
      "Dying Light 2: Stay Human is a first-person open-world action game set in an isolated urban landscape after a zombie apocalypse. The Dying Light series puts a big emphasis on traversal, providing you with parkour abilities so you can make your way through its desolate urban landscape quickly and effectively.",
);
List<Gamebox> oyun_listesi = <Gamebox>[
  oyun1,
  oyun2,
  oyun3,
  oyun4,
  oyun5,
  oyun6,
  oyun7
]; //Gamebox tipinde tanımladığımız oyunların listesi

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

class GameDescp1 extends StatefulWidget {
  const GameDescp1({Key? key}) : super(key: key);

  @override
  State<GameDescp1> createState() => _GameDescp1State();
}

//FavDescpState kısmındakilerini aynen oyun_listesi ve GlobalIndexe göre gerçekleştiriyor.
class _GameDescp1State extends State<GameDescp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        leadingWidth: 200,
        leading: Builder(builder: (BuildContext context) {
          return SizedBox(
            child: MaterialButton(
              onPressed: () {
                favori_list_guncelle(oyun_listesi, favori);
                Navigator.popUntil(context, ((route) => route.isFirst));
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Color.fromRGBO(0, 122, 255, 1),
                  ),
                  Text(
                    "Games",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 122, 255, 1),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
        actions: [
          MaterialButton(
            padding: const EdgeInsets.all(0),
            color: const Color.fromRGBO(255, 255, 255, 1),
            onPressed: () {
              if (oyun_listesi[global_index].oyun_favori_mi == true) {
                oyun_listesi[global_index].oyun_favori_mi = false;
                setState(() {});
              } else {
                oyun_listesi[global_index].oyun_favori_mi = true;
                setState(() {});
              }
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    textAlign: TextAlign.end,
                    oyun_listesi[global_index].oyun_favori_mi == true
                        ? "Unfavourite"
                        : "Favourite",
                    style: const TextStyle(
                      color: Color.fromRGBO(0, 122, 255, 1),
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Color.fromRGBO(255, 255, 255, 0.92),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: <Widget>[
                Image.network(
                  oyun_listesi[global_index].oyun_asseti,
                  height: 291,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Container(
                  height: 291.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.black87.withOpacity(0.0),
                            Colors.black87.withOpacity(0.9),
                            Colors.black87,
                          ],
                          stops: const [
                            0.0,
                            0.8,
                            1.0
                          ])),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Container(
                        width: 330,
                        child: Text(
                          textAlign: TextAlign.end,
                          oyun_listesi[global_index].oyun_ismi,
                          style: const TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Text(oyun_listesi[global_index].oyun_tanitimi),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  MaterialButton(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                    onPressed: () {},
                    child: Container(
                      width: double.infinity,
                      child: const Text("Visit reddit"),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  MaterialButton(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                    onPressed: () {},
                    child: Container(
                      width: double.infinity,
                      child: const Text("Visit website"),
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

class _GamesPageState extends State<GamesPage> {
  //kaydırma işlemiyle alakalı appbarda kullanılan değişkenler.
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;
  //Aratılan oyun metodumuzda kullandığımız Gamebox tipinde listemiz.
  List<Gamebox> oyun_aratilan = List.from(oyun_listesi);
  //Search fonksiyonumuzu buraya tanımladık.
  void search(String value) {
    //Oyun ismi ve oyun kategorisine göre büyük küçük harfe duyarlı arama gerçekleştirilir.
    setState(() {
      oyun_aratilan = oyun_listesi
          .where((element) =>
              element.oyun_ismi.toLowerCase().contains(value.toLowerCase()) ||
              element.oyun_kategorisi
                  .toLowerCase()
                  .contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      body: CustomScrollView(
        slivers: <Widget>[
          //Kaydırmayla uyumlu widget
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromRGBO(248, 248, 248, 0.92),
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 140,
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
          ),
          SliverToBoxAdapter(
            // Search Bar tasarımı ve dizaynı
            child: Container(
              height: 48,
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
                      //Genişletme
                      Expanded(
                        child: Container(
                          height: 22,
                          child: Center(
                            child: TextField(
                              onChanged: (value) => search(value),
                              autocorrect: false,
                              decoration: const InputDecoration.collapsed(
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
          SliverList(
            //Gamebox tipinde oluşturulan verilerin ekrana liste üzerinden oluşturulması ve ekrana gösterilmesi
            //Listenin uzunluğu kadar döngüşü olan ve ilgili oyunlarımızı ekrana yazdıran widget.
            delegate: SliverChildBuilderDelegate((context, index) {
              final oyun = oyun_aratilan[index];
              return MaterialButton(
                color: Colors.white,
                onPressed: () {
                  global_index = index;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameDescp1(),
                    ),
                  );
                },
                child: Container(
                  height: 136,
                  padding: const EdgeInsets.all(16),
                  width: double.infinity,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  child: Row(children: [
                    Image.network(
                      oyun.oyun_asseti,
                      height: 120,
                      width: 104,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              oyun.oyun_ismi,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text.rich(
                            //Textleri parçalıyo.
                            TextSpan(
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              children: [
                                const TextSpan(text: "metacritic: "),
                                TextSpan(
                                  text: "${oyun.oyun_puani}",
                                  style: const TextStyle(
                                      color: Color.fromRGBO(216, 0, 0, 1),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          Text(
                            oyun.oyun_kategorisi,
                            style: const TextStyle(
                                color: Color.fromRGBO(138, 138, 143, 1)),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              );
            }, childCount: oyun_aratilan.length),
          ),
          //Aratılan öge bulunamazsa veya favori kısmında oyun bulunmuyorsa bu durumları burada inceliyoruz.
          SliverFillRemaining(
            hasScrollBody: false,
            child: SizedBox(
                child: oyun_aratilan.isEmpty
                    ? const Padding(
                        padding: EdgeInsets.only(top: 36),
                        child: Text(
                          "No game has been searched.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      )
                    : SizedBox()),
          )
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
                        Image.asset(
                          'asset/Vector.png',
                          width: 42,
                          height: 28,
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
                      //Butona basıldığı anda favori listemizi güncelleyip favori sayfasına yönlendiriyor.
                      favori_list_guncelle(oyun_listesi, favori);
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
                            "Favourites",
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
