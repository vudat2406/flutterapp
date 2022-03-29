import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test/data/repository.dart';

import '../data/models/contact.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  final Repository repository;
  List<Contact> _contacts = [];

  ContactCubit({this.repository}) : super(ContactInitial());

  void fetchContact() {
    Timer(Duration(seconds: 1), () {
      repository
          .fetchContact()
          .then((contacts) => {emit(ContactLoaded(contacts: contacts))});
    });
  }
}
