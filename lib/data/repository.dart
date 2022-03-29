import 'package:test/data/network_services.dart';

import 'models/contact.dart';

class Repository {
  final NetworkService networkService;
  Repository({this.networkService});

  Future<List<Contact>> fetchContact() async {
    final contactRaws = await networkService.fetchContact();
    return contactRaws.map((e) => Contact.fromJson(e)).toList();
  }
}
