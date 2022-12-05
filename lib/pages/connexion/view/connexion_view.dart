import 'package:fidelity/pages/connexion/connexion.dart';
import 'package:fidelity/shared/constants/colors.dart';
import 'package:fidelity/shared/constants/text_style.dart';
import 'package:fidelity/shared/widgets/text_field_custom.dart';
import 'package:fidelity/shared/widgets/textfield_avec_titre_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConnexionView extends StatelessWidget {
  const ConnexionView({super.key});

  @override
  Widget build(BuildContext context) {
    final connexionCubit = context.watch<ConnexionCubit>();

    return WillPopScope(
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
                  height: 30,
                ),
                TextFieldAvecTitreCustom(
                  titre: 'Mot de passe',
                  textFieldCustom: TextFieldCustom(
                    key: const Key('TextFieldMdp'),
                    formzInput: null, //const ChampMail.pure(),
                    hintText: '**********',
                    messageErreur: 'Mot de passe incorrect',
                    prefixIcon: const Icon(
                      FontAwesomeIcons.lock,
                      color: couleurIcons,
                      size: 25,
                    ),
                    onChangedMethod: (motDePasse) => null,
                    // onChangedMethod: (nom) =>
                    //     listeClientCubit.mailModifier(mailTexte: mail),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () => print('connexion'),
                  //onPressed: connexionCubit.state.status.isValidated ? connexionCubit.submit : null,
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
    );
  }

  bool _retour() {
    return true;
  }
}
