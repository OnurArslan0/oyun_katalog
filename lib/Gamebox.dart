//Gamebox classımızı oluşturduk ve daha sonra kullanacağımız değişkenleri tanımladık.
class Gamebox {
  String oyun_ismi;
  List<String> oyun_kategorisi;
  String oyun_asseti;
  int oyun_puani;
  bool oyun_favori_mi;
  String? reddit_asseti;
  String? website_asseti;
  String? oyun_tanitimi;
  int oyun_id;

  //Gamebox constructor
  Gamebox(
      {required this.oyun_ismi,
      required this.oyun_kategorisi,
      required this.oyun_asseti,
      required this.oyun_puani,
      required this.reddit_asseti,
      required this.website_asseti,
      required this.oyun_tanitimi,
      required this.oyun_id,
      this.oyun_favori_mi = false});
  factory Gamebox.fromJson(Map<String, dynamic> json) {
    List<String> genres = [];
    for (var i in json['genres'] as List<dynamic>) {
      genres.add(i['name'] as String);
    }
    return Gamebox(
      oyun_ismi: json['name'] as String,
      oyun_kategorisi: genres,
      oyun_asseti: json['background_image'] as String,
      oyun_puani: json['metacritic'] as int,
      reddit_asseti: json['reddit_url'] as String?,
      website_asseti: json['website'] as String?,
      oyun_tanitimi: json['description'] as String?,
      oyun_id: json['id'] as int,
      oyun_favori_mi: false,
    );
  }
}
