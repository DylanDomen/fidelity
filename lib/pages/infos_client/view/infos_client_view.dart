import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/models/magasin.dart';
import 'package:fidelity/pages/ajout_achat/view/ajout_achat_page.dart';
import 'package:fidelity/pages/infos_client/infos_client.dart';
import 'package:fidelity/shared/constants/autres.dart';
import 'package:fidelity/shared/constants/colors.dart';
import 'package:fidelity/shared/constants/text_style.dart';
import 'package:fidelity/shared/widgets/bouton_fermer.dart';
import 'package:fidelity/shared/widgets/bouton_sans_texte.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfosClientView extends StatelessWidget {
  const InfosClientView({super.key});

  @override
  Widget build(BuildContext context) {
    final infosClientCubit = context.watch<InfosClientCubit>();

    final width = (MediaQuery.of(context).size.width - 370) / 2;
    final appBloc = context.watch<AppBloc>();
    return WillPopScope(
      onWillPop: () async => _retour(),
      child: Container(
        padding:
            const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: BoutonFermer(
                key: const Key('BtnQuitter'),
                onPress: infosClientCubit.fermer,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Flexible(
                        child: Container(
                          width: 330,
                          height: 290,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            color: Colors.white,
                            boxShadow: [
                              boxShadow,
                            ],
                          ),
                          child: Column(
                            children: [
                              Flexible(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'Informations client',
                                        style: labelTitre,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    BoutonSansTexte(
                                      onPress: () => print('Modfieir client'),
                                      icon: const Icon(
                                        FontAwesomeIcons.pen,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      color: couleurBouton,
                                      key: const Key('BtnModifierClient'),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Flexible(
                                child: Text(
                                  'Désignation : ${infosClientCubit.state.utilisateur.nom} '
                                  '${infosClientCubit.state.utilisateur.prenom}',
                                  style: labelStyle,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Flexible(
                                child: Text(
                                  'Mail : ${infosClientCubit.state.utilisateur.mail}',
                                  style: labelStyle,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Flexible(
                                child: Text(
                                  'Mobile : ${infosClientCubit.state.utilisateur.mobile}',
                                  style: labelStyle,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Flexible(
                                child: Text(
                                  'Numéro carte fidélité : ${infosClientCubit.state.numeroCarte}',
                                  style: labelStyle,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Flexible(
                        child: Container(
                          width: 330,
                          height: 290,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            color: Colors.white,
                            boxShadow: [
                              boxShadow,
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Points de fidélité',
                                  style: labelTitre,
                                ),
                              ),
                              Flexible(
                                flex: 4,
                                child: Text(
                                  infosClientCubit.state.nbPointsFidelite
                                      .toString(),
                                  style: labelTitre_50,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        color: Colors.white,
                        boxShadow: [
                          boxShadow,
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Achats effectué',
                            style: labelTitre,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Expanded(
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                crossAxisCount: 1,
                                mainAxisExtent: 50,
                              ),
                              itemBuilder: (context, index) {
                                if (index == 0) {
                                  return InkWell(
                                    key: const Key('InkwellAjoutAchat'),
                                    onTap: () => _ajouterUnAchat(
                                      appBloc: appBloc,
                                      context: context,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.zero,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        ),
                                        color: textfieldColorBackground,
                                      ),
                                      width: width,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Ajouter un achat',
                                            style: normalStyle_20,
                                          ),
                                          const Icon(
                                            Icons.add,
                                            color: couleurIcons,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                                return InkWell(
                                  key: const Key('InkwellLigneAchat'),
                                  onTap: () => print('Achat ${index - 1}'),
                                  child: Container(
                                    key: const Key('ContainerAchat'),
                                    padding: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                      color: textfieldColorBackground,
                                    ),
                                    width: width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Flexible(
                                              child: Text(
                                                'Montant initial : ${infosClientCubit.state.listeAchats[index - 1].montantInitial} €',
                                                style: normalStyle_1,
                                                key: const Key(
                                                  'TexteMontantInitial',
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Text(
                                                'Montant Final : ${infosClientCubit.state.listeAchats[index - 1].montantFinal} €',
                                                style: normalStyle_1,
                                                key: const Key(
                                                  'TexteMontantFinal',
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Flexible(
                                          child: Text(
                                            'Points gagné : ${infosClientCubit.state.listeAchats[index - 1].nombrePointsGagne}',
                                            style: normalStyle_1,
                                            key: const Key('TextePtsGagne'),
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            'Points perdu : ${infosClientCubit.state.listeAchats[index - 1].nombrePointsPerdu}',
                                            style: normalStyle_1,
                                            key: const Key('TextePtsPerdu'),
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            'Magasin : ${infosClientCubit.state.listeAchats[index - 1].magasin.texte}',
                                            style: normalStyle_1,
                                            key: const Key('TexteMagasin'),
                                          ),
                                        ),
                                        BoutonSansTexte(
                                          onPress: () =>
                                              infosClientCubit.supprimerAchat(
                                            achat: infosClientCubit
                                                .state.listeAchats[index - 1],
                                          ),
                                          icon: const Icon(
                                            FontAwesomeIcons.trash,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                          color: couleurBoutonFermer,
                                          key: const Key('BtnSupprimerAchat'),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              itemCount:
                                  infosClientCubit.state.listeAchats.length + 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _ajouterUnAchat({
    required BuildContext context,
    required AppBloc appBloc,
  }) async {
    await showDialog<void>(
      context: context,
      barrierDismissible:
          true, // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) => const AjoutAchatPage(),
    );
  }

  bool _retour() {
    return true;
  }
}
