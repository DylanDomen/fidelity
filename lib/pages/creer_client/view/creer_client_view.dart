import 'package:fidelity/pages/creer_client/creer_client.dart';
import 'package:fidelity/shared/constants/colors.dart';
import 'package:fidelity/shared/constants/text_style.dart';
import 'package:fidelity/shared/widgets/boutons_annuler_et_valider.dart';
import 'package:fidelity/shared/widgets/text_field_custom.dart';
import 'package:fidelity/shared/widgets/textfield_avec_titre_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';

class CreerClientView extends StatelessWidget {
  const CreerClientView({super.key});

  @override
  Widget build(BuildContext context) {
    final creerClientCubit = context.watch<CreerClientCubit>();

    return WillPopScope(
      onWillPop: () async => _retour(),
      child: Container(
        width: 900,
        height: 600,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(
              'Ajouter un client',
              style: labelTitre,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 340,
              child: Column(
                children: [
                  TextFieldAvecTitreCustom(
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
                  const SizedBox(
                    height: 15,
                  ),
                  TextFieldAvecTitreCustom(
                    titre: 'Prenom',
                    textFieldCustom: TextFieldCustom(
                      key: const Key('TextFieldPrenom'),
                      formzInput: null, //const ChampTexte.pure(),
                      hintText: 'Tarik',
                      messageErreur: 'Prenom incorrect',
                      prefixIcon: const Icon(
                        FontAwesomeIcons.user,
                        color: couleurIcons,
                        size: 25,
                      ),
                      onChangedMethod: (prenom) => null,
                      // onChangedMethod: (nom) =>
                      //     listeClientCubit.nomModifier(nomTexte: nom),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFieldAvecTitreCustom(
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
                  const SizedBox(
                    height: 15,
                  ),
                  TextFieldAvecTitreCustom(
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
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: InkWell(
                          onTap: () => print('scan de carte'),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 100),
                            key: const Key('BtnScan'),
                            width: 110,
                            height: 100,
                            decoration: BoxDecoration(
                              color: textfieldColorBackground,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(),
                                Container(
                                  child: const Icon(
                                    Icons.add,
                                    color: couleurIcons,
                                    size: 30,
                                  ),
                                ),
                                Text(
                                  'Scanner une carte',
                                  style: normalStyle_1,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Ou',
                        style: labelStyle,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: TextFieldAvecTitreCustom(
                          titre: 'Numéro carte fidélité',
                          textFieldCustom: TextFieldCustom(
                            key: const Key('TextFieldNumeroCarte'),
                            formzInput: null, //const ChampMobile.pure(),
                            hintText: 'fAbcd854ed',
                            messageErreur: 'Numero de carte incorrect',
                            prefixIcon: const Icon(
                              FontAwesomeIcons.idCard,
                              color: couleurIcons,
                              size: 25,
                            ),
                            onChangedMethod: (numeroCarte) => null,
                            // onChangedMethod: (mobile) => listeClientCubit
                            //     .mobileModifier(mobileTexte: mobile),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            BoutonRetourEtSuivant(
              keyBouttonAnnuler: const Key('BtnAnnuler'),
              keyBouttonValider: const Key('BtnValider'),
              onTapCallbackAnnuler: () => print('annuler'),
              onTapCallbackValider: () =>
                  creerClientCubit.state.status.isValidated
                      ? creerClientCubit.submit
                      : null,
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
