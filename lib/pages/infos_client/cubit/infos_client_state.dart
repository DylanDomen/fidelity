part of 'infos_client_cubit.dart';

class InfosClientState extends Equatable {
  const InfosClientState({
    required this.utilisateur,
    this.listeAchats = const [],
    this.nbPointsFidelite = 0,
    this.numeroCarte = '',
  });

  final Utilisateur utilisateur;
  final List<Achat> listeAchats;
  final int nbPointsFidelite;
  final String numeroCarte;

  InfosClientState copywith({
    Utilisateur? utilisateur,
    List<Achat>? listeAchats,
    int? nbPointsFidelite,
    String? numeroCarte,
  }) {
    return InfosClientState(
      utilisateur: utilisateur ?? this.utilisateur,
      listeAchats: listeAchats ?? this.listeAchats,
      nbPointsFidelite: nbPointsFidelite ?? this.nbPointsFidelite,
      numeroCarte: numeroCarte ?? this.numeroCarte,
    );
  }

  @override
  List<Object> get props => [
        utilisateur,
        listeAchats,
        nbPointsFidelite,
        numeroCarte,
      ];
}
