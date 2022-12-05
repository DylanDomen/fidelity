enum  Magasin {
stella,
tampon,
}
extension  MagasinTXT on  Magasin {
String get texte {
switch (this) {
case  Magasin.stella:
 return 'Stella';
case  Magasin.tampon:
 return 'Tampon';
}
}
}
