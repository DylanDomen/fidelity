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
                onPress: () => print('fermer'),
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
                      Container(
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Informations client',
                                  style: labelTitre,
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
                                  key: const Key('BtnDeconnexion'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Text(
                              'Désignation : Tarik Ochet',
                              style: labelStyle,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Mail : mail@gmail.com',
                              style: labelStyle,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Mobile : 0692 12 23 56',
                              style: labelStyle,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Numéro carte fidélité : fAbcd854ed',
                              style: labelStyle,
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
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
                                '150',
                                style: labelTitre_50,
                              ),
                            ),
                            const Spacer(),
                          ],
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
                                    onTap: () => print('AjoutAchat'),
                                    //onTap: listeClientCubit.creerClient,
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
                                  // onTap: () {
                                  //   listeClientCubit.selectionneClient(
                                  //     client: listeClientCubit
                                  //         .state.listeClientsFiltre[index - 1],
                                  //   );
                                  // },
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
                                                // '${listeClientCubit.state.listeClientsFiltre[index - 1].nom} '
                                                // '${listeClientCubit.state.listeClientsFiltre[index - 1].prenom}',
                                                'Montant initial : 150 €',
                                                style: normalStyle_1,
                                                key: const Key(
                                                  'TexteMontantInitial',
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Text(
                                                // '${listeClientCubit.state.listeClientsFiltre[index - 1].nom} '
                                                // '${listeClientCubit.state.listeClientsFiltre[index - 1].prenom}',
                                                'Montant initial : 150 €',
                                                style: normalStyle_1,
                                                key: const Key(
                                                  'TexteMontantFinal',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Flexible(
                                          child: Text(
                                            // listeClientCubit
                                            //     .state
                                            //     .listeClientsFiltre[index - 1]
                                            //     .telephone,
                                            'Points gagné : 15',
                                            style: normalStyle_1,
                                            key: const Key('TextePtsGagne'),
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            // listeClientCubit
                                            //     .state.listeClientsFiltre[index - 1].mail,
                                            'Points perdu : 0',
                                            style: normalStyle_1,
                                            key: const Key('TextePtsPerdu'),
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            // listeClientCubit
                                            //     .state.listeClientsFiltre[index - 1].mail,
                                            'Magasin : Tampon',
                                            style: normalStyle_1,
                                            key: const Key('TexteMagasin'),
                                          ),
                                        ),
                                        BoutonSansTexte(
                                          onPress: () =>
                                              print('supprimer ${index - 1}'),
                                          icon: const Icon(
                                            FontAwesomeIcons.trash,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                          color: couleurBoutonFermer,
                                          key: const Key('BtnSupprimerClient'),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              itemCount: 100,
                              //itemCount: listeClientCubit.state.listeClientsFiltre.length + 1,
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

  bool _retour() {
    return true;
  }
}
