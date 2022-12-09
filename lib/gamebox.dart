class Gamebox {
  String oyun_ismi;
  String oyun_kategorisi;
  String oyun_asseti;
  int oyun_puani;
  bool oyun_favori_mi;

  Gamebox(
      {required this.oyun_ismi,
      required this.oyun_kategorisi,
      required this.oyun_asseti,
      required this.oyun_puani,
      this.oyun_favori_mi = false}) {}
}
