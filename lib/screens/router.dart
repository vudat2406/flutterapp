// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/constants/strings.dart';
import 'package:test/cubit/contact_cubit.dart';
import 'package:test/data/network_services.dart';
import 'package:test/data/repository.dart';
import 'package:test/screens/contact.dart';
import 'package:test/screens/contact_detail.dart';

import '../data/models/contact.dart';

class AppRouter {
  Repository repository;
  AppRouter() {
    repository = Repository(networkService: NetworkService());
  }
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) =>
                      ContactCubit(repository: repository),
                  child: const ContactsScreen(),
                ));
      case CONTACT_DETAIL:
        final contact = settings.arguments as Contact;
        return MaterialPageRoute(
            builder: (_) => ContactDetail(contact: contact));
      default:
        return null;
    }
  }
}
