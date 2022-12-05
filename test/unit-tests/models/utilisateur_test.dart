import 'package:fidelity/models/role.dart';
import 'package:fidelity/models/utilisateur.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var uidUtilisateur = 'wnB3r';
  var nom = 'NOI2y';
  var role = Role.client;
  var mobile = 'zfiMc';
  var mail = 'jzaHM';
  var prenom = '5r7Nj';
  setUp(() {});
  test('Instanciation', () {
    var utilisateur = Utilisateur(
      uidUtilisateur: uidUtilisateur,
      nom: nom,
      role: role,
      mobile: mobile,
      mail: mail,
      prenom: prenom,
    );
    expect(
      utilisateur.uidUtilisateur,
      uidUtilisateur,
    );
    expect(
      utilisateur.nom,
      nom,
    );
    expect(
      utilisateur.role,
      role,
    );
    expect(
      utilisateur.mobile,
      mobile,
    );
    expect(
      utilisateur.mail,
      mail,
    );
    expect(
      utilisateur.prenom,
      prenom,
    );
  });
  test('Comparaison', () {
    expect(
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: nom,
        role: role,
        mobile: mobile,
        mail: mail,
        prenom: prenom,
      ),
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: nom,
        role: role,
        mobile: mobile,
        mail: mail,
        prenom: prenom,
      ),
    );
  });
  test('Copywith', () {
    expect(
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: nom,
        role: role,
        mobile: mobile,
        mail: mail,
        prenom: prenom,
      ).copywith(),
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: nom,
        role: role,
        mobile: mobile,
        mail: mail,
        prenom: prenom,
      ),
    );
  });
  test('Copywith uidUtilisateur', () {
    expect(
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: nom,
        role: role,
        mobile: mobile,
        mail: mail,
        prenom: prenom,
      ).copywith(uidUtilisateur: 'Px922'),
      Utilisateur(
        uidUtilisateur: 'Px922',
        nom: nom,
        role: role,
        mobile: mobile,
        mail: mail,
        prenom: prenom,
      ),
    );
  });
  test('Copywith nom', () {
    expect(
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: nom,
        role: role,
        mobile: mobile,
        mail: mail,
        prenom: prenom,
      ).copywith(nom: 'MdW0G'),
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: 'MdW0G',
        role: role,
        mobile: mobile,
        mail: mail,
        prenom: prenom,
      ),
    );
  });
  test('Copywith role', () {
    expect(
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: nom,
        role: role,
        mobile: mobile,
        mail: mail,
        prenom: prenom,
      ).copywith(role: role),
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: nom,
        role: role,
        mobile: mobile,
        mail: mail,
        prenom: prenom,
      ),
    );
  });
  test('Copywith mobile', () {
    expect(
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: nom,
        role: role,
        mobile: mobile,
        mail: mail,
        prenom: prenom,
      ).copywith(mobile: 'yiyiZ'),
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: nom,
        role: role,
        mobile: 'yiyiZ',
        mail: mail,
        prenom: prenom,
      ),
    );
  });
  test('Copywith mail', () {
    expect(
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: nom,
        role: role,
        mobile: mobile,
        mail: mail,
        prenom: prenom,
      ).copywith(mail: 'sZd18'),
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: nom,
        role: role,
        mobile: mobile,
        mail: 'sZd18',
        prenom: prenom,
      ),
    );
  });
  test('Copywith prenom', () {
    expect(
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: nom,
        role: role,
        mobile: mobile,
        mail: mail,
        prenom: prenom,
      ).copywith(prenom: 'fXLYE'),
      Utilisateur(
        uidUtilisateur: uidUtilisateur,
        nom: nom,
        role: role,
        mobile: mobile,
        mail: mail,
        prenom: 'fXLYE',
      ),
    );
  });
}
