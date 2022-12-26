import 'package:fidelity/models/champs/champ_numerique.dart';
import 'package:fidelity/models/magasin.dart';
import 'package:fidelity/pages/ajout_achat/ajout_achat.dart';
import 'package:fidelity/shared/constants/colors.dart';
import 'package:fidelity/shared/constants/text_style.dart';
import 'package:fidelity/shared/widgets/boutons_annuler_et_valider.dart';
import 'package:fidelity/shared/widgets/dropdown_custom.dart';
import 'package:fidelity/shared/widgets/text_field_custom.dart';
import 'package:fidelity/shared/widgets/textfield_avec_titre_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AjoutAchatView extends StatelessWidget {
  const AjoutAchatView({super.key});

  @override
  Widget build(BuildContext context) {
    final ajoutAchatCubit = context.watch<AjoutAchatCubit>();
    final globalKeyMagasin = GlobalKey();

    return BlocListener<AjoutAchatCubit, AjoutAchatState>(
      listener: (context, state) {
        if (state.messageErreur != '') {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Erreur'),
                content: Text(state.messageErreur),
                backgroundColor: Colors.white,
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Fermer')),
                ],
              );
            },
          );
        }
      },
      child: WillPopScope(
        onWillPop: () async => _retour(),
        child: Container(
          width: 600,
          height: 600,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Text(
                "Ajout d'un achat",
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
                      titre: 'Montant initial',
                      textFieldCustom: TextFieldCustom(
                        key: const Key('TextFieldMontantInitial'),
                        textInputType: TextInputType.number,
                        formzInput: ajoutAchatCubit.state.montantInitial,
                        hintText: '150',
                        messageErreur: ajoutAchatCubit
                            .state.montantInitial.error?.msgErreur,
                        prefixIcon: const Icon(
                          FontAwesomeIcons.euroSign,
                          color: couleurIcons,
                          size: 25,
                        ),
                        listeInputFormatter: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'^\d+.?\d{0,2}'),
                          ),
                        ],
                        onChangedMethod: (montantInitial) =>
                            ajoutAchatCubit.montantInitialModifier(
                                montantInitialTexte:
                                    double.parse(montantInitial)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    DropdownCustom(
                      alignment: Alignment.centerLeft,
                      key: const Key('DropdownMagasin'),
                      titre: 'Magasin',
                      globalKey: globalKeyMagasin,
                      formzInput: ajoutAchatCubit.state.magasin,
                      onChanged: (p0) => ajoutAchatCubit.magasinModifier(
                        magasinTexte: p0! as Magasin,
                      ),
                      liste: Magasin.values
                          .map(
                            (magasin) => DropdownMenuItemCustom(
                              object: magasin,
                              texte: '${magasin.texte}',
                            ),
                          )
                          .toList(),
                      suffixIcon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: couleurIcons,
                      ),
                      prefixIcon: const Icon(
                        FontAwesomeIcons.store,
                        color: couleurIcons,
                      ),
                      hintText: 'Sélectionnez votre magasin',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFieldAvecTitreCustom(
                      titre: 'Nombre de points utilisé',
                      textFieldCustom: TextFieldCustom(
                        key: const Key('TextFieldNbPointsUtilise'),
                        formzInput: ajoutAchatCubit
                            .state.nbPointsUtilise, //const ChampTexte.pure(),
                        hintText: '140',
                        messageErreur: ajoutAchatCubit
                            .state.nbPointsUtilise.error?.msgErreur,
                        prefixIcon: const Icon(
                          FontAwesomeIcons.moneyCheck,
                          color: couleurIcons,
                          size: 25,
                        ),
                        listeInputFormatter: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'^\d+'),
                          ),
                        ],
                        onChangedMethod: (nbPointsUtilise) =>
                            ajoutAchatCubit.nbPointsUtiliseModifier(
                                nbPointsUtiliseTexte:
                                    double.parse(nbPointsUtilise)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Montant final après calcul des points de fidélité',
                style: labelStyle,
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  '${ajoutAchatCubit.state.montantInitial.value - ajoutAchatCubit.state.nbPointsUtilise.value} €',
                  style: labelTitre,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        Text(
                          'Nombre de points gagné',
                          style: labelStyle,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text(
                            '${((ajoutAchatCubit.state.montantInitial.value - ajoutAchatCubit.state.nbPointsUtilise.value) / 10).floor()}',
                            style: labelTitre,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        Text(
                          'Nombre de points perdu',
                          style: labelStyle,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text(
                            ajoutAchatCubit.state.nbPointsUtilise.value
                                .toInt()
                                .toString(),
                            style: labelTitre,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              BoutonRetourEtSuivant(
                keyBouttonAnnuler: const Key('BtnAnnuler'),
                keyBouttonValider: const Key('BtnValider'),
                onTapCallbackAnnuler: ajoutAchatCubit.fermer,
                onTapCallbackValider: ajoutAchatCubit.submit,
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _retour() {
    return true;
  }
}
