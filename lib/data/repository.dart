import 'package:test/data/network_services.dart';

import 'models/contact.dart';

class Repository {
  final NetworkService networkService;
  Repository({this.networkService});

  Future<List<Contact>> fetchContact(int page) async {
    final contactRaws = await networkService.fetchContact(page);
    return contactRaws.map((e) => Contact.fromJson(e)).toList();
  }
}
