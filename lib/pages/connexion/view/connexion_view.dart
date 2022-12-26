import 'package:fidelity/models/champs/email.dart';
import 'package:fidelity/models/champs/mot_de_passe.dart';
import 'package:fidelity/pages/connexion/connexion.dart';
import 'package:fidelity/shared/constants/colors.dart';
import 'package:fidelity/shared/constants/text_style.dart';
import 'package:fidelity/shared/widgets/text_field_custom.dart';
import 'package:fidelity/shared/widgets/textfield_avec_titre_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConnexionView extends StatelessWidget {
  const ConnexionView({super.key});

  @override
  Widget build(BuildContext context) {
    final connexionCubit = context.watch<ConnexionCubit>();

    return BlocListener<ConnexionCubit, ConnexionState>(
      listener: (context, state) {
        if (state.messageErreur != '') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.messageErreur),
              backgroundColor: couleurBoutonFermer,
            ),
          );
        }
      },
      child: WillPopScope(
        onWillPop: () async => _retour(),
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: couleurTextePrincipal,
                alignment: Alignment.center,
                child: Image.asset('assets/image/showCar.jpg'),
              ),
            ),
            Container(
              width: 500,
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Connexion',
                    style: labelTitre,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFieldAvecTitreCustom(
                    titre: 'Adresse mail',
                    textFieldCustom: TextFieldCustom(
                      key: const Key('TextFieldMail'),
                      formzInput: connexionCubit.state.mail,
                      //const ChampMail.pure(),
                      hintText: 'mail@gmail.com',
                      messageErreur: connexionCubit.state.mail.error?.msgErreur,
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
                          connexionCubit.mailModifier(mailTexte: mail),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFieldAvecTitreCustom(
                    titre: 'Mot de passe',
                    textFieldCustom: TextFieldCustom(
                      obscurcisText: true,
                      key: const Key('TextFieldMdp'),
                      formzInput: connexionCubit.state.motDePasse,
                      hintText: '**********',
                      messageErreur:
                          connexionCubit.state.motDePasse.error?.msgErreur,
                      prefixIcon: const Icon(
                        FontAwesomeIcons.lock,
                        color: couleurIcons,
                        size: 25,
                      ),
                      onChangedMethod: (motDePasse) => connexionCubit
                          .motDePasseModifier(motDePasseTexte: motDePasse),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: connexionCubit.submit,
                    child: Container(
                      key: const Key('BtnConnexion'),
                      width: 230,
                      height: 40,
                      decoration: BoxDecoration(
                        color: couleurBoutonValider,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.only(left: 9, right: 9),
                      child: Center(
                        child: Text(
                          'Valider',
                          style: labelBouton,
                        ),
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
