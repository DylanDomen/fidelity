import 'package:fidelity/models/champs/champ_texte.dart';
import 'package:fidelity/models/champs/email.dart';
import 'package:fidelity/models/champs/mobile.dart';
import 'package:fidelity/pages/creer_client/creer_client.dart';
import 'package:fidelity/shared/constants/colors.dart';
import 'package:fidelity/shared/constants/text_style.dart';
import 'package:fidelity/shared/widgets/boutons_annuler_et_valider.dart';
import 'package:fidelity/shared/widgets/text_field_custom.dart';
import 'package:fidelity/shared/widgets/textfield_avec_titre_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              "Création d'un client",
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
                      formzInput: creerClientCubit.state.nom,
                      hintText: 'Tarik',
                      messageErreur:
                          creerClientCubit.state.nom.error?.msgErreur,
                      prefixIcon: const Icon(
                        FontAwesomeIcons.user,
                        color: couleurIcons,
                        size: 25,
                      ),
                      listeInputFormatter: [
                        FilteringTextInputFormatter.deny(
                          RegExp(r'[/\\><!?|%&$^]'),
                        ),
                      ],
                      onChangedMethod: (nom) =>
                          creerClientCubit.nomModifier(nomTexte: nom),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFieldAvecTitreCustom(
                    titre: 'Prenom',
                    textFieldCustom: TextFieldCustom(
                      key: const Key('TextFieldPrenom'),
                      formzInput: creerClientCubit.state.prenom,
                      hintText: 'Tarik',
                      messageErreur:
                          creerClientCubit.state.prenom.error?.msgErreur,
                      prefixIcon: const Icon(
                        FontAwesomeIcons.user,
                        color: couleurIcons,
                        size: 25,
                      ),
                      listeInputFormatter: [
                        FilteringTextInputFormatter.deny(
                          RegExp(r'[/\\><!?|%&$^]'),
                        ),
                      ],
                      onChangedMethod: (prenom) =>
                          creerClientCubit.prenomModifier(prenomTexte: prenom),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFieldAvecTitreCustom(
                    titre: 'Adresse mail',
                    textFieldCustom: TextFieldCustom(
                      key: const Key('TextFieldMail'),
                      formzInput: creerClientCubit.state.mail,
                      hintText: 'mail@gmail.com',
                      messageErreur:
                          creerClientCubit.state.mail.error?.msgErreur,
                      prefixIcon: const Icon(
                        FontAwesomeIcons.envelope,
                        color: couleurIcons,
                        size: 25,
                      ),
                      listeInputFormatter: [
                        FilteringTextInputFormatter.deny(
                          RegExp(r'[/\\><!?|%&$^]'),
                        ),
                      ],
                      onChangedMethod: (mail) =>
                          creerClientCubit.mailModifier(mailTexte: mail),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFieldAvecTitreCustom(
                    titre: 'Mobile',
                    textFieldCustom: TextFieldCustom(
                      key: const Key('TextFieldMobile'),
                      formzInput: creerClientCubit.state.mobile,
                      hintText: '0692122356',
                      messageErreur:
                          creerClientCubit.state.mobile.error?.msgErreur,
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: couleurIcons,
                        size: 25,
                      ),
                      listeInputFormatter: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d{0,10}$'),
                        ),
                      ],
                      onChangedMethod: (mobile) =>
                          creerClientCubit.mobileModifier(mobileTexte: mobile),
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
                            formzInput: creerClientCubit.state.numCarteFidelite,
                            hintText: 'fAbcd854ed',
                            messageErreur: creerClientCubit
                                .state.numCarteFidelite.error?.msgErreur,
                            prefixIcon: const Icon(
                              FontAwesomeIcons.idCard,
                              color: couleurIcons,
                              size: 25,
                            ),
                            onChangedMethod: (numCarteFidelite) =>
                                creerClientCubit.numCarteFideliteModifier(
                                    numCarteFideliteTexte: numCarteFidelite),
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
              onTapCallbackAnnuler: creerClientCubit.fermer,
              onTapCallbackValider: creerClientCubit.submit,
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
