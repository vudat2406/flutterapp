import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:test/cubit/contact_cubit.dart';
// import 'package:test/screens/contact.dart';
import 'package:test/screens/router.dart';
import 'package:test/styles/theme.dart';

void main() {
  runApp(MyApp(
    router: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter router;
  const MyApp({Key key, this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      onGenerateRoute: router.generateRoute,
      theme: theme(),
    );
  }
}
