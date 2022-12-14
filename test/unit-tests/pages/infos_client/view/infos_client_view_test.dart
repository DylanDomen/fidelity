// class MockInfosClientCubit extends MockCubit<InfosClientState> implements InfosClientCubit{}
//
// extension PumpInfosClient on WidgetTester {
//   Future<void> pumpInfosClient({required Widget widget,required InfosClientCubit infos_clientCubit,}) {
//     return pumpWidget(
//         BlocProvider(
//             create: (context) => infos_clientCubit,
//           child: MaterialApp(
//             home: Scaffold(body: widget),
//         ),
//       ),
//     );
//   }
// }
// void main() {
//   late InfosClientCubit infos_clientCubit;
//   setUp(() {
//     infos_clientCubit = MockInfosClientCubit();
//     when(() => infos_clientCubit.state,).thenReturn(const InfosClientState());
//   });
//   group('InfosClient Page', () {
//         testWidgets('WillPopScope présent', (tester) async {
//       await tester.pumpInfosClient(
//           widget: const InfosClientView(),
//           infos_clientCubit: infos_clientCubit,
//           );
//       await tester.pumpAndSettle();
//       expect(find.byType(WillPopScope), findsOneWidget);
//     });
//         testWidgets('Retour retourne true', (tester) async {
//       await tester.pumpInfosClient(
//           widget: const InfosClientView(),
//           infos_clientCubit: infos_clientCubit,
//           );
//       await tester.pumpAndSettle();
//           final dynamic widgetsAppState = tester.state(find.byType(WidgetsApp));
//           expect(await widgetsAppState.didPopRoute(), isFalse);
//     });
//
//   });
// }
