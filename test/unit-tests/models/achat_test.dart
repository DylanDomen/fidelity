import 'package:fidelity/models/achat.dart';
import 'package:fidelity/models/magasin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var uidAchat = 'vtjOC';
  var montantInitial = 31.0;
  var montantFinal = 52.0;
  var uidUtilisateur = 'Lqtea';
  var magasin = Magasin.stella;
  var nombrePointsPerdu = 71;
  var nombrePointsGagne = 70;
  setUp(() {});
  test('Instanciation', () {
    var achat = Achat(
      uidAchat: uidAchat,
      montantInitial: montantInitial,
      montantFinal: montantFinal,
      uidUtilisateur: uidUtilisateur,
      magasin: magasin,
      nombrePointsPerdu: nombrePointsPerdu,
      nombrePointsGagne: nombrePointsGagne,
    );
    expect(
      achat.uidAchat,
      uidAchat,
    );
    expect(
      achat.montantInitial,
      montantInitial,
    );
    expect(
      achat.montantFinal,
      montantFinal,
    );
    expect(
      achat.uidUtilisateur,
      uidUtilisateur,
    );
    expect(
      achat.magasin,
      magasin,
    );
    expect(
      achat.nombrePointsPerdu,
      nombrePointsPerdu,
    );
    expect(
      achat.nombrePointsGagne,
      nombrePointsGagne,
    );
  });
  test('Comparaison', () {
    expect(
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ),
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ),
    );
  });
  test('Copywith', () {
    expect(
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ).copywith(),
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ),
    );
  });
  test('Copywith uidAchat', () {
    expect(
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ).copywith(uidAchat: '1R4r7'),
      Achat(
        uidAchat: '1R4r7',
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ),
    );
  });
  test('Copywith montantInitial', () {
    expect(
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ).copywith(montantInitial: 70.0),
      Achat(
        uidAchat: uidAchat,
        montantInitial: 70.0,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ),
    );
  });
  test('Copywith montantFinal', () {
    expect(
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ).copywith(montantFinal: 72.0),
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: 72.0,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ),
    );
  });
  test('Copywith uidUtilisateur', () {
    expect(
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ).copywith(uidUtilisateur: 'PRLXv'),
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: 'PRLXv',
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ),
    );
  });
  test('Copywith magasin', () {
    expect(
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ).copywith(magasin: magasin),
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ),
    );
  });
  test('Copywith nombrePointsPerdu', () {
    expect(
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ).copywith(nombrePointsPerdu: 15),
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: 15,
        nombrePointsGagne: nombrePointsGagne,
      ),
    );
  });
  test('Copywith nombrePointsGagne', () {
    expect(
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: nombrePointsGagne,
      ).copywith(nombrePointsGagne: 97),
      Achat(
        uidAchat: uidAchat,
        montantInitial: montantInitial,
        montantFinal: montantFinal,
        uidUtilisateur: uidUtilisateur,
        magasin: magasin,
        nombrePointsPerdu: nombrePointsPerdu,
        nombrePointsGagne: 97,
      ),
    );
  });
}
