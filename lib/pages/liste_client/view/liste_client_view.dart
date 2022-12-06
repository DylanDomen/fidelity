import 'package:fidelity/pages/liste_client/liste_client.dart';
import 'package:fidelity/shared/constants/autres.dart';
import 'package:fidelity/shared/constants/colors.dart';
import 'package:fidelity/shared/constants/text_style.dart';
import 'package:fidelity/shared/widgets/bouton_sans_icon.dart';
import 'package:fidelity/shared/widgets/bouton_sans_texte.dart';
import 'package:fidelity/shared/widgets/text_field_custom.dart';
import 'package:fidelity/shared/widgets/textfield_avec_titre_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListeClientView extends StatelessWidget {
  const ListeClientView({super.key});

  @override
  Widget build(BuildContext context) {
    final listeClientCubit = context.watch<ListeClientCubit>();

    final width = (MediaQuery.of(context).size.width - 370) / 2;
    final size = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async => _retour(),
      child: Container(
        padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                ),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: BoutonSansIcon(
                          key: const Key('BtnScannerCarteFidélité'),
                          largeur: 230,
                          onTapCallback: () => null,
                          texte: 'Scanner carte fidélité',
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: BoutonSansIcon(
                          key: const Key('BtnCarteFidélitéViaMobile'),
                          largeur: 230,
                          onTapCallback: () => null,
                          texte: 'Carte fidélité via mobile',
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: BoutonSansIcon(
                          key: const Key('BtnCarteFidélitéViaMail'),
                          largeur: 230,
                          onTapCallback: () => null,
                          texte: 'Carte fidélité via mail',
                        ),
                      ),
                    ],
                  ),
                ),
                BoutonSansTexte(
                  onPress: () => print('deconexion'),
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: 15,
                  ),
                  color: couleurBoutonFermer,
                  key: const Key('BtnDeconnexion'),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            //Container du filtre===================
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: Colors.white,
                boxShadow: [
                  boxShadow,
                ],
              ),
              child: Row(
                children: [
                  Flexible(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Filtres : ', style: titreStyle_1),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Row(
                      children: [
                        Flexible(
                          child: TextFieldAvecTitreCustom(
                            titre: 'Nom',
                            textFieldCustom: TextFieldCustom(
                              key: const Key('TextFieldNom'),
                              formzInput: null, //const ChampTexte.pure(),
                              hintText: 'Tarik',
                              messageErreur: 'Nom incorrect',
                              prefixIcon: const Icon(
                                FontAwesomeIcons.user,
                                color: couleurIcons,
                                size: 25,
                              ),
                              onChangedMethod: (nom) => null,
                              // onChangedMethod: (nom) =>
                              //     listeClientCubit.nomModifier(nomTexte: nom),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: TextFieldAvecTitreCustom(
                            titre: 'Adresse mail',
                            textFieldCustom: TextFieldCustom(
                              key: const Key('TextFieldMail'),
                              formzInput: null, //const ChampMail.pure(),
                              hintText: 'mail@gmail.com',
                              messageErreur: 'Mail incorrect',
                              prefixIcon: const Icon(
                                FontAwesomeIcons.envelope,
                                color: couleurIcons,
                                size: 25,
                              ),
                              onChangedMethod: (mail) => null,
                              // onChangedMethod: (nom) =>
                              //     listeClientCubit.mailModifier(mailTexte: mail),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: TextFieldAvecTitreCustom(
                            titre: 'Mobile',
                            textFieldCustom: TextFieldCustom(
                              key: const Key('TextFieldMobile'),
                              formzInput: null, //const ChampMobile.pure(),
                              hintText: '06 92 12 23 56',
                              messageErreur: 'Mobile incorrect',
                              prefixIcon: const Icon(
                                Icons.phone,
                                color: couleurIcons,
                                size: 25,
                              ),
                              onChangedMethod: (mobile) => null,
                              // onChangedMethod: (mobile) => listeClientCubit
                              //     .mobileModifier(mobileTexte: mobile),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //Container de la liste des clients ===================
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: Colors.white,
                  boxShadow: [
                    boxShadow,
                  ],
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    mainAxisExtent: 50,
                  ),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return InkWell(
                        key: const Key('InkwellAjoutClient'),
                        onTap: () => print('AjoutClient'),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  'Ajouter un client',
                                  style: normalStyle_20,
                                ),
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
                      key: const Key('InkwellLigneClient'),
                      onTap: () => print('client ${index - 1}'),
                      // onTap: () {
                      //   listeClientCubit.selectionneClient(
                      //     client: listeClientCubit
                      //         .state.listeClientsFiltre[index - 1],
                      //   );
                      // },
                      child: Container(
                        key: const Key('ContainerClient'),
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: textfieldColorBackground,
                        ),
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Row(
                                children: [
                                  const Icon(
                                    FontAwesomeIcons.user,
                                    color: couleurIcons,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Flexible(
                                    child: Text(
                                      // '${listeClientCubit.state.listeClientsFiltre[index - 1].nom} '
                                      // '${listeClientCubit.state.listeClientsFiltre[index - 1].prenom}',
                                      'Tarik Ochet',
                                      style: normalStyle_1,
                                      key: const Key('TexteNomPrenom'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Text(
                                // listeClientCubit
                                //     .state
                                //     .listeClientsFiltre[index - 1]
                                //     .telephone,
                                '0692152132',
                                style: normalStyle_1,
                                key: const Key('TexteMobile'),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                // listeClientCubit
                                //     .state.listeClientsFiltre[index - 1].mail,
                                'mail@gmail.com',
                                style: normalStyle_1,
                                key: const Key('TexteMail'),
                              ),
                            ),
                            BoutonSansTexte(
                              onPress: () => print('supprimer ${index - 1}'),
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
