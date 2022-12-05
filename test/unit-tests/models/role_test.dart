import 'package:test/test.dart';
import '../../../lib/models/role.dart';


void main() {
test('Texte caissier', () {
expect( Role.caissier.texte,'Caissier');
});
test('Texte client', () {
expect( Role.client.texte,'Client');
});
}
