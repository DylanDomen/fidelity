import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:equatable/equatable.dart';
import 'package:fidelity/models/role.dart';
import 'package:json_annotation/json_annotation.dart';

part 'utilisateur.g.dart';

const List<JsonConverter<dynamic, dynamic>> firestoreJsonConverters = [
  FirestoreDateTimeConverter(),
  FirestoreTimestampConverter(),
  FirestoreGeoPointConverter(),
];
const firestoreSerializable = JsonSerializable(
  explicitToJson: true,
  converters: firestoreJsonConverters,
  createFieldMap: true,
);

@firestoreSerializable
class Utilisateur extends Equatable {
  const Utilisateur({
    this.uidUtilisateur,
    required this.nom,
    required this.role,
    required this.mobile,
    required this.mail,
    required this.prenom,
  });
  factory Utilisateur.fromJson(Map<String, Object?> json) =>
      _$UtilisateurFromJson(json);

  Map<String, Object?> toJson() => _$UtilisateurToJson(this);

  final String? uidUtilisateur;
  final String nom;
  final Role role;
  final String mobile;
  final String mail;
  final String prenom;

  Utilisateur copywith({
    String? uidUtilisateur,
    String? nom,
    Role? role,
    String? mobile,
    String? mail,
    String? prenom,
  }) {
    return Utilisateur(
      uidUtilisateur: uidUtilisateur ?? this.uidUtilisateur,
      nom: nom ?? this.nom,
      role: role ?? this.role,
      mobile: mobile ?? this.mobile,
      mail: mail ?? this.mail,
      prenom: prenom ?? this.prenom,
    );
  }

  @override
  List<Object?> get props => [
        uidUtilisateur,
        nom,
        role,
        mobile,
        mail,
        prenom,
      ];
}

@Collection<Utilisateur>('utilisateur')
final utilisateursRef = UtilisateurCollectionReference();
