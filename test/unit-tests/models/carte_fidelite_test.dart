import 'package:fidelity/models/carte_fidelite.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var uidCarteFidelite = 'W4jkW';
  var numeroCarte = '98tGU';
  var pointsFidelite = 18;
  var mobileUtilisateur = 'QgjLG';
  var mailUtilisateur = 'bif5E';
  var nomPrenomUtilisateur = '0uTCv';
  var uidUtilisateur = 'OmFJF';
  setUp(() {});
  test('Instanciation', () {
    var cartefidelite = CarteFidelite(
      uidCarteFidelite: uidCarteFidelite,
      numeroCarte: numeroCarte,
      pointsFidelite: pointsFidelite,
      mobileUtilisateur: mobileUtilisateur,
      mailUtilisateur: mailUtilisateur,
      nomPrenomUtilisateur: nomPrenomUtilisateur,
      uidUtilisateur: uidUtilisateur,
    );
    expect(
      cartefidelite.uidCarteFidelite,
      uidCarteFidelite,
    );
    expect(
      cartefidelite.numeroCarte,
      numeroCarte,
    );
    expect(
      cartefidelite.pointsFidelite,
      pointsFidelite,
    );
    expect(
      cartefidelite.mobileUtilisateur,
      mobileUtilisateur,
    );
    expect(
      cartefidelite.mailUtilisateur,
      mailUtilisateur,
    );
    expect(
      cartefidelite.nomPrenomUtilisateur,
      nomPrenomUtilisateur,
    );
    expect(
      cartefidelite.uidUtilisateur,
      uidUtilisateur,
    );
  });
  test('Comparaison', () {
    expect(
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ),
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ),
    );
  });
  test('Copywith', () {
    expect(
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ).copywith(),
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ),
    );
  });
  test('Copywith uidCarteFidelite', () {
    expect(
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ).copywith(uidCarteFidelite: 'KoSHU'),
      CarteFidelite(
        uidCarteFidelite: 'KoSHU',
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ),
    );
  });
  test('Copywith numeroCarte', () {
    expect(
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ).copywith(numeroCarte: 'KMEA7'),
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: 'KMEA7',
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ),
    );
  });
  test('Copywith pointsFidelite', () {
    expect(
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ).copywith(pointsFidelite: 68),
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: 68,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ),
    );
  });
  test('Copywith mobileUtilisateur', () {
    expect(
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ).copywith(mobileUtilisateur: '2s86P'),
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: '2s86P',
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ),
    );
  });
  test('Copywith mailUtilisateur', () {
    expect(
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ).copywith(mailUtilisateur: 'Ratrh'),
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: 'Ratrh',
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ),
    );
  });
  test('Copywith NomPrenomUtilisateur', () {
    expect(
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ).copywith(NomPrenomUtilisateur: 'PHYkI'),
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: 'PHYkI',
        uidUtilisateur: uidUtilisateur,
      ),
    );
  });
  test('Copywith uidUtilisateur', () {
    expect(
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: uidUtilisateur,
      ).copywith(uidUtilisateur: 'JY6Cg'),
      CarteFidelite(
        uidCarteFidelite: uidCarteFidelite,
        numeroCarte: numeroCarte,
        pointsFidelite: pointsFidelite,
        mobileUtilisateur: mobileUtilisateur,
        mailUtilisateur: mailUtilisateur,
        nomPrenomUtilisateur: nomPrenomUtilisateur,
        uidUtilisateur: 'JY6Cg',
      ),
    );
  });
}
