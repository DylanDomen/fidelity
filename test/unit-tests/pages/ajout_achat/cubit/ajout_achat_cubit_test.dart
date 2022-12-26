// void main() {
//   group('Normal Test',() {
//     test('Etat initial', () {
//       expect(
//           AjoutAchatCubit().state,
//         const AjoutAchatState(),
//       );
//     });
//   });
//   group('Bloc Test',() {
//
//     blocTest<AjoutAchatCubit, AjoutAchatState>(
//       'Submit progress/success',
//       setUp: () {},
//       build: () =>
//           AjoutAchatCubit()..emit(const AjoutAchatState(status: FormzStatus.valid)),
//       act: (bloc) => bloc.submit(),
//       expect: () => const [
//         AjoutAchatState(status: FormzStatus.submissionInProgress),
//         AjoutAchatState(status: FormzStatus.submissionSuccess),
//       ],
//     );
//
//   });
// }
