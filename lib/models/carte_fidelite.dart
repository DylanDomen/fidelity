import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'carte_fidelite.g.dart';

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
class CarteFidelite extends Equatable {
  const CarteFidelite({
    this.uidCarteFidelite,
    required this.numeroCarte,
    required this.pointsFidelite,
    required this.mobileUtilisateur,
    required this.mailUtilisateur,
    required this.nomPrenomUtilisateur,
    required this.uidUtilisateur,
  });
  factory CarteFidelite.fromJson(Map<String, Object?> json) =>
      _$CarteFideliteFromJson(json);

  Map<String, Object?> toJson() => _$CarteFideliteToJson(this);

  final String? uidCarteFidelite;
  final String numeroCarte;
  final int pointsFidelite;
  final String mobileUtilisateur;
  final String mailUtilisateur;
  final String nomPrenomUtilisateur;
  final String uidUtilisateur;

  CarteFidelite copywith({
    String? uidCarteFidelite,
    String? numeroCarte,
    int? pointsFidelite,
    String? mobileUtilisateur,
    String? mailUtilisateur,
    String? NomPrenomUtilisateur,
    String? uidUtilisateur,
  }) {
    return CarteFidelite(
      uidCarteFidelite: uidCarteFidelite ?? this.uidCarteFidelite,
      numeroCarte: numeroCarte ?? this.numeroCarte,
      pointsFidelite: pointsFidelite ?? this.pointsFidelite,
      mobileUtilisateur: mobileUtilisateur ?? this.mobileUtilisateur,
      mailUtilisateur: mailUtilisateur ?? this.mailUtilisateur,
      nomPrenomUtilisateur: NomPrenomUtilisateur ?? this.nomPrenomUtilisateur,
      uidUtilisateur: uidUtilisateur ?? this.uidUtilisateur,
    );
  }

  @override
  List<Object?> get props => [
        uidCarteFidelite,
        numeroCarte,
        pointsFidelite,
        mobileUtilisateur,
        mailUtilisateur,
        nomPrenomUtilisateur,
        uidUtilisateur,
      ];
}

@Collection<CarteFidelite>('cartefidelite')
final cartefidelitesRef = CarteFideliteCollectionReference();
