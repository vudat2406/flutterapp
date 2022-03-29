part of 'contact_cubit.dart';

@immutable
abstract class ContactState {}

class ContactInitial extends ContactState {}

class ContactLoaded extends ContactState {
  final List<Contact> contacts;

  ContactLoaded({this.contacts});
}

class ContactLoading extends ContactState {
  final List<Contact> oldContacts;
  final bool isFirstFetch;

  ContactLoading(this.oldContacts, {this.isFirstFetch = false});
}
