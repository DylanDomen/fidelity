import 'package:test/test.dart';
import '../../../lib/models/magasin.dart';


void main() {
test('Texte stella', () {
expect( Magasin.stella.texte,'Stella');
});
test('Texte tampon', () {
expect( Magasin.tampon.texte,'Tampon');
});
}
