import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import 'Gamebox.dart';
import 'data.dart';
import 'fav.dart';

void main() {
  runApp(const AppBackGr());
}

Future<String> fetchData() async {
  final response = await http.get(Uri.parse(
      'https://api.rawg.io/api/games?page_size=34&page=1&key=3be8af6ebf124ffe81d90f514e59856c'));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Unexpected error occured!');
  }
}

Future<String> fetchgameData(int id) async {
  final response = await http.get(Uri.parse(
      'https://api.rawg.io/api/games/$id?key=3be8af6ebf124ffe81d90f514e59856c'));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Unexpected error occured!');
  }
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

String? website = " ";
String? reddit = " ";
//Uygulamamızda kullanacağımız tüm oyunların tek tek bilgilerini burada veriyoruz.

List<Gamebox> oyun_listesi = [];

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
  launchReddit(String url) async {
    await launchUrl(Uri.parse(url));
    return;
  }

  launchWebsite(String url) async {
    if (url.startsWith("https")) {
      await launchUrl(Uri.parse(url));
    } else {
      await launchUrl(Uri.parse(url.replaceAll("http", "https")));
    }
    return;
  }

  void fetchgameDescp() async {
    String oyunlarString =
        (await fetchgameData(oyun_aratilan[global_index].oyun_id)) as String;
    Map<String, dynamic> json = jsonDecode(oyunlarString);

    var gameBox = Gamebox.fromJson(Map.from(json));
    oyun_aratilan[global_index] = gameBox;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchgameDescp();
    super.initState();
  }

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
                favori_list_guncelle(oyun_aratilan, favori);
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
              if (oyun_aratilan[global_index].oyun_favori_mi == true) {
                oyun_aratilan[global_index].oyun_favori_mi = false;
                setState(() {});
              } else {
                oyun_aratilan[global_index].oyun_favori_mi = true;
                setState(() {});
              }
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    textAlign: TextAlign.end,
                    oyun_aratilan[global_index].oyun_favori_mi == true
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
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(255, 255, 255, 0.92),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: <Widget>[
                  Image.network(
                    oyun_aratilan[global_index].oyun_asseti,
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
                            oyun_aratilan[global_index].oyun_ismi,
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
                        child: Text(
                            oyun_aratilan[global_index].oyun_tanitimi ?? ""),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    MaterialButton(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                      onPressed: () {
                        reddit = oyun_aratilan[global_index].reddit_asseti;
                        if (reddit != null) {
                          launchReddit(reddit!);
                        }
                      },
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
                      onPressed: () {
                        website = oyun_aratilan[global_index].website_asseti;
                        if (website != null) {
                          launchWebsite(website!);
                        }
                      },
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
      ),
    );
  }
}

List<Gamebox> oyun_aratilan = List.from(oyun_listesi);

class _GamesPageState extends State<GamesPage> {
  //kaydırma işlemiyle alakalı appbarda kullanılan değişkenler.
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;
  //Aratılan oyun metodumuzda kullandığımız Gamebox tipinde listemiz.
  void fetchGame() async {
    String oyunlarString = (await fetchData()) as String;
    Map<String, dynamic> json = jsonDecode(oyunlarString);
    var list = <Gamebox>[];
    print(json['results'].runtimeType);
    for (var i in json['results'] as List<dynamic>) {
      print(i.runtimeType);
      var gameBox = Gamebox.fromJson(Map.from(i));
      list.add(gameBox);
    }
    oyun_listesi = list;
    search("");
  }

  @override
  void initState() {
    fetchGame();
    // TODO: implement initState
    super.initState();
  }

  //Search fonksiyonumuzu buraya tanımladık.
  void search(String value) {
    //Oyun ismi ve oyun kategorisine göre büyük küçük harfe duyarlı arama gerçekleştirilir.
    setState(() {
      oyun_aratilan = oyun_listesi
          .where((element) =>
              element.oyun_ismi.toLowerCase().contains(value.toLowerCase()))
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
                            oyun.oyun_kategorisi.join(", "),
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
                      favori_list_guncelle(oyun_aratilan, favori);
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
