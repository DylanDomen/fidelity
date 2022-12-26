part of 'ajout_achat_cubit.dart';

class AjoutAchatState extends Equatable {
  const AjoutAchatState({
    this.status = FormzStatus.pure,
    this.montantInitial = const ChampNumerique.pure(),
    this.magasin = const ChampMagasin.pure(),
    this.nbPointsUtilise = const ChampNumerique.pure(),
    this.montantFinal = 0,
    this.nbPointsGagner = 0,
    this.nbPointsPerdu = 0,
    this.messageErreur = '',
  });

  final FormzStatus status;
  final ChampNumerique montantInitial;
  final ChampMagasin magasin;
  final ChampNumerique nbPointsUtilise;
  final double montantFinal;
  final int nbPointsGagner;
  final int nbPointsPerdu;
  final String messageErreur;

  AjoutAchatState copywith({
    FormzStatus? status,
    ChampNumerique? montantInitial,
    ChampMagasin? magasin,
    ChampNumerique? nbPointsUtilise,
    double? montantFinal,
    int? nbPointsGagner,
    int? nbPointsPerdu,
    String? messageErreur,
  }) {
    return AjoutAchatState(
      status: status ?? this.status,
      montantInitial: montantInitial ?? this.montantInitial,
      magasin: magasin ?? this.magasin,
      nbPointsUtilise: nbPointsUtilise ?? this.nbPointsUtilise,
      montantFinal: montantFinal ?? this.montantFinal,
      nbPointsGagner: nbPointsGagner ?? this.nbPointsGagner,
      nbPointsPerdu: nbPointsPerdu ?? this.nbPointsPerdu,
      messageErreur: messageErreur ?? this.messageErreur,
    );
  }

  @override
  List<Object> get props => [
        status,
        montantInitial,
        magasin,
        nbPointsUtilise,
        montantFinal,
        nbPointsGagner,
        nbPointsPerdu,
        messageErreur,
      ];
}
