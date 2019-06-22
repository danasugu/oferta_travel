class OferteModel {
  int id;
  String url;
//  String localitate;

  OferteModel(this.id, this.url);

  OferteModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
//    localitate = parsedJson['localitate'];
  }
}

//class OferteModel {
//  int pret;
//  String moneda;
//  String localitate;
//
//  OferteModel(this.pret, this.moneda, this.localitate);
//
//  OferteModel.fromJson(Map<String, dynamic> parsedJson) {
//    pret = parsedJson['pret'];
//    moneda = parsedJson['moneda'];
//    localitate = parsedJson['localitate'];
//  }
//}
