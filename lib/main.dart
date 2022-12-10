import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Gamebox.dart';

void main() {
  runApp(const MyApp());
}

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
  oyun_indeks: 0,
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
  oyun_indeks: 1,
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
  oyun_indeks: 2,
);
Gamebox oyun4 = Gamebox(
  oyun_ismi: "Left 4 Dead 2",
  oyun_kategorisi: "Action, puzzle",
  oyun_asseti: "https://www.rabisu.com/images/lf4d2-banner.png",
  oyun_puani: 89,
  oyun_favori_mi: false,
  reddit_asseti: "https://www.reddit.com/r/l4d2/",
  website_asseti: "https://www.l4d.com/game.html",
  oyun_tanitimi:
      "Description. From Valve® — creators of Counter-Strike®, Half-Life®, Portal™ and Team Fortress® — Left 4 Dead™ 2 is a game that casts up to four 'Survivors' in an epic struggle against hordes of swarming zombies and terrifying 'Boss Infected' mutants.",
  oyun_indeks: 3,
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
  oyun_indeks: 4,
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
  oyun_indeks: 5,
);
Gamebox oyun7 = Gamebox(
  oyun_ismi: "Dying Light 2",
  oyun_kategorisi: "Horror, survival",
  oyun_asseti:
      "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/i/3367fa99-0ba6-454c-b947-683f1a9f896d/ddvjouf-f7f4076c-b30a-43b6-b34f-a2b796cdab2f.png",
  oyun_puani: 75,
  oyun_favori_mi: false,
  reddit_asseti: "https://www.reddit.com/r/dyinglight/",
  website_asseti: "https://dyinglightgame.com/",
  oyun_tanitimi:
      "Dying Light 2: Stay Human is a first-person open-world action game set in an isolated urban landscape after a zombie apocalypse. The Dying Light series puts a big emphasis on traversal, providing you with parkour abilities so you can make your way through its desolate urban landscape quickly and effectively.",
  oyun_indeks: 6,
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
        actions: <Widget>[
          MaterialButton(
            onPressed: () {},
            child: Container(
              width: double.infinity,
              child: Text("Visit reddit"),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Container(
              width: double.infinity,
              child: Text("Visit reddit"),
            ),
          ),
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
                Container(
                  child: Image.network(
                    oyun_listesi[3].oyun_asseti,
                    height: 291,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Text(
                        oyun_listesi[3].oyun_ismi,
                        style: const TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
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
                      child: Text(oyun_listesi[0].oyun_tanitimi),
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
                  MaterialButton(
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                    onPressed: () {},
                    child: Container(
                      width: double.infinity,
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
