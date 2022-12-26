// extension PumpInfosClient on WidgetTester {
//   Future<void> pumpInfosClient({
//     required Widget widget,
//   }) {
//     return pumpWidget(
//       BlocProvider(
//         create: (context) => InfosClientCubit(),
//         child: MaterialApp(
//           home: widget,
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   group('InfosClient Page', () {
//     test('Est une page', () {
//       expect(InfosClientPage.page(), isA<MaterialPage<dynamic>>());
//     });
//
//     testWidgets('InfosClientView intégrer à la page', (tester) async {
//       tester.binding.window.physicalSizeTestValue = const Size(3840, 2400);
//       await tester.pumpInfosClient(widget: const InfosClientPage());
//       await tester.pumpAndSettle();
//       expect(find.byType(InfosClientView), findsOneWidget);
//     });
//   });
// }
