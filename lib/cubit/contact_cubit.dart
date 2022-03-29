import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test/data/repository.dart';

import '../data/models/contact.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit({this.repository}) : super(ContactInitial());

  final Repository repository;
  int page = 0;

  void LoadContact() {
    if (state is ContactLoading) return;

    final currentState = state;
    var oldContacts = <Contact>[];
    if (currentState is ContactLoaded) {
      oldContacts = currentState.contacts;
    }
    emit(ContactLoading(oldContacts, isFirstFetch: page == 0));
    repository.fetchContact(page).then((newContacts) {
      page++;
      final contacts = (state as ContactLoading).oldContacts;
      contacts.addAll(newContacts);
      emit(ContactLoaded(contacts: contacts));
    });
  }

  // void fetchContact() {
  //   Timer(Duration(seconds: 1), () {
  //     repository
  //         .fetchContact()
  //         .then((contacts) => {emit(ContactLoaded(contacts: contacts))});
  //   });
  // }
}
