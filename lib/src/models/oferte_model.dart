class OferteModel {
  int pret;
  String moneda;
  String localitate;

  OferteModel(this.pret, this.moneda, this.localitate);

  OferteModel.fromJson(Map<String, dynamic> parsedJson) {
    pret = parsedJson['pret'];
    moneda = parsedJson['moneda'];
    localitate = parsedJson['localitate'];
  }
}
