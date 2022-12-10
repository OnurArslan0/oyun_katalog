class Gamebox {
  String oyun_ismi;
  String oyun_kategorisi;
  String oyun_asseti;
  int oyun_puani;
  bool oyun_favori_mi;
  String reddit_asseti;
  String website_asseti;
  String oyun_tanitimi;
  int oyun_index;

  Gamebox(
      {required this.oyun_ismi,
      required this.oyun_kategorisi,
      required this.oyun_asseti,
      required this.oyun_puani,
      required this.reddit_asseti,
      required this.website_asseti,
      required this.oyun_tanitimi,
      required this.oyun_index,
      this.oyun_favori_mi = false}) {}
}
