import 'package:flutter/material.dart';

import 'data.dart';
import 'main.dart';

class FavPage extends StatefulWidget {
  const FavPage({Key? key}) : super(key: key);

  @override
  State<FavPage> createState() => _FavPageState();
}

class FavDescp extends StatefulWidget {
  const FavDescp({Key? key}) : super(key: key);

  @override
  State<FavDescp> createState() => _FavDescpState();
}

//favori listesi için kullandığımız index değişkeni
int fav_index = 0;

//Favori kısmındaki oyunların descpleri için oluşturduğumuz class.
//Gamedescp classından farkı favori listemize ve favori indexine göre çalışması.
class _FavDescpState extends State<FavDescp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        //Games yazısı overflow olduğu için genişliğini arttırarak düzelttik.
        leadingWidth: 200,
        leading: Builder(builder: (BuildContext context) {
          return SizedBox(
            //SizedBox'un içine buton tanımlıyoruz
            //< Games butonuna basınca games sayfamıza dönmeyi sağlıyo.
            child: MaterialButton(
              onPressed: () {
                //Mainde yazdığımız oyun listesini alan ve favori listemizi güncelleyen fonksiyon
                favori_list_guncelle(oyun_aratilan, favori);
                //Butona bastığımızda ana sayfaya dönmemizi sağlıyo
                Navigator.popUntil(context, ((route) => route.isFirst));
              },
              //Bizden istenen şekilde textimiz ve iconumuzun renklerini ayarlıyoruz.
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
          //Favori butonumuz
          MaterialButton(
            //Butona her tıkladığımızda favorideyse favoriden çıkartıcak,eğer favori değilse favoriye ekleyecek.
            onPressed: () {
              //If'in içinde oyunun favori olup olmadığını kontrol edip butona bastığımızda değerini güncelliyor.
              if (favori[fav_index].oyun_favori_mi == true) {
                favori[fav_index].oyun_favori_mi = false;
                setState(() {});
              } else {
                favori[fav_index].oyun_favori_mi = true;
                setState(() {});
              }
            },
            //Bizden istenen şekilde textimizin renklerini ve boyutunu ayarlıyoruz.
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  //Favourite  unfavourite olma durumunu burada güncelliyoruz.
                  child: Text(
                    favori[fav_index].oyun_favori_mi == true
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
      ),
      //Appbarın altındaki tüm sayfayı kaplayan container
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(255, 255, 255, 0.92),
          child: Column(
            //Column'un içindeki her şeyi sola yaslıyor.
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Containeri stackle sarıyoruz çünkü üzerine oyunun ismini yazdırıyoruz
              Stack(
                children: <Widget>[
                  Image.network(
                    favori[fav_index].oyun_asseti,
                    height: 291,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  //Gradient yapısıyla yazının arkasına gölge eklediğimiz container
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
                  //Containeri sağ alt köşeye sabitledik
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Container(
                        width: 330,
                        child: Text(
                          textAlign: TextAlign.end,
                          //Favori listemizden anlık fav_index'e göre oyunumuzun ismini çekiyor.
                          favori[fav_index].oyun_ismi,
                          style: const TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //GameDescp ve visit reddit , visit website
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //GamedDescp container
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
                    //Favori listemizden anlık fav_index'e göre oyunumuzun oyun tanıtımını yazdırıyoruz.
                    Container(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                        child: Text(favori[fav_index].oyun_tanitimi ?? ""),
                      ),
                    ),
                    //aradaki ince çizgi
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
      ),
    );
  }
}

//GamePageState classından farkı favori listemize ve favori indexine göre çalışması.
class _FavPageState extends State<FavPage> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;
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
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.fromLTRB(16, 0, 0, 9),
              expandedTitleScale: 1,
              title: PreferredSize(
                preferredSize: Size(double.infinity, 41),
                child: LayoutBuilder(builder: (context, constraints) {
                  if (favori.length > 0) {
                    return Text(
                      "Favourites (${favori.length})",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 0.41,
                      ),
                    );
                  } else {
                    return const Text(
                      "Favourites",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 0.41,
                      ),
                    );
                  }
                }),
              ),
            ),
            expandedHeight: 140,
          ),
          SliverList(
            //Gamebox tipinde oluşturulan verilerin ekrana liste üzerinden oluşturulması ve ekrana gösterilmesi
            delegate: SliverChildBuilderDelegate((context, index) {
              final oyun = favori[index];
              return MaterialButton(
                color: const Color.fromRGBO(255, 255, 255, 1),
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  fav_index = index;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FavDescp(),
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
            }, childCount: favori.length),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: SizedBox(
                child: favori.isEmpty
                    ? const Padding(
                        padding: EdgeInsets.only(top: 36),
                        child: Text(
                          "There is no favourites found.",
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
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
                          color: ColorSelect.greyColor,
                        ),
                        SizedBox(
                          height: 12,
                          child: Text(
                            "Games",
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
                          Icons.star,
                          size: 30,
                          color: ColorSelect.blueColor,
                        ),
                        SizedBox(
                          height: 12,
                          child: Text(
                            "Favourites",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
