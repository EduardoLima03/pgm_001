import 'package:pgm_001/providers/database_provider.dart';

class ContactModel{
  int? id;
  String? name;
  String? email;
  String? phone;

  ContactModel();

  ContactModel.fromMap(Map map){
    id = map[idColumn];
    name = map[nameColumn];
    email = map[emailColumn];
    phone = map[phoneColumn];
  }

  Map toMap(){
    Map<String, dynamic> map = {
      nameColumn: name,
      emailColumn: email,
      phoneColumn: phone,
    };

    if(id != null){
      map[idColumn] = id;
    }
    return map;
  }
}