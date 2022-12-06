import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:equatable/equatable.dart';
import 'package:fidelity/models/magasin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'achat.g.dart';

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
class Achat extends Equatable {
  const Achat({
    this.uidAchat,
    required this.montantInitial,
    required this.montantFinal,
    required this.uidUtilisateur,
    required this.magasin,
    required this.nombrePointsPerdu,
    required this.nombrePointsGagne,
  });
  factory Achat.fromJson(Map<String, Object?> json) => _$AchatFromJson(json);

  Map<String, Object?> toJson() => _$AchatToJson(this);

  final String? uidAchat;
  final double montantInitial;
  final double montantFinal;
  final String uidUtilisateur;
  final Magasin magasin;
  final int nombrePointsPerdu;
  final int nombrePointsGagne;

  Achat copywith({
    String? uidAchat,
    double? montantInitial,
    double? montantFinal,
    String? uidUtilisateur,
    Magasin? magasin,
    int? nombrePointsPerdu,
    int? nombrePointsGagne,
  }) {
    return Achat(
      uidAchat: uidAchat ?? this.uidAchat,
      montantInitial: montantInitial ?? this.montantInitial,
      montantFinal: montantFinal ?? this.montantFinal,
      uidUtilisateur: uidUtilisateur ?? this.uidUtilisateur,
      magasin: magasin ?? this.magasin,
      nombrePointsPerdu: nombrePointsPerdu ?? this.nombrePointsPerdu,
      nombrePointsGagne: nombrePointsGagne ?? this.nombrePointsGagne,
    );
  }

  @override
  List<Object?> get props => [
        uidAchat,
        montantInitial,
        montantFinal,
        uidUtilisateur,
        magasin,
        nombrePointsPerdu,
        nombrePointsGagne,
      ];
}

@Collection<Achat>('achat')
final achatsRef = AchatCollectionReference();
