enum  Role {
caissier,
client,
}
extension  RoleTXT on  Role {
String get texte {
switch (this) {
case  Role.caissier:
 return 'Caissier';
case  Role.client:
 return 'Client';
}
}
}
