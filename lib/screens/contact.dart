export 'contact.dart';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/constants/strings.dart';
import 'package:test/cubit/contact_cubit.dart';
import 'package:test/services/data.dart';
import 'package:test/widgets/allwidgets.dart';

import '../data/models/contact.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ContactCubit>(context).fetchContact();
    return Scaffold(
      drawer: SizedBox(
          width: 164,
          height: 306,
          child: Drawer(
            backgroundColor: const Color.fromRGBO(192, 209, 125, 1),
            child: Column(
              children: const [
                SizedBox(height: 15),
                DrawerItem(image: 'assets/images/d1.png', name: 'Invoices'),
                Divider(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  height: 0,
                  thickness: 0.5,
                  indent: 16,
                  endIndent: 16,
                ),
                DrawerItem(image: 'assets/images/d6.png', name: 'Appointments'),
                Divider(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  height: 0,
                  thickness: 0.5,
                  indent: 16,
                  endIndent: 16,
                ),
                DrawerItem(image: 'assets/images/d2.png', name: 'Notes'),
                Divider(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  height: 0,
                  thickness: 0.5,
                  indent: 16,
                  endIndent: 16,
                ),
                DrawerItem(image: 'assets/images/d3.png', name: 'Documents'),
                Divider(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  height: 0,
                  thickness: 0.5,
                  indent: 16,
                  endIndent: 16,
                ),
                DrawerItem(
                    image: 'assets/images/Asset8.png', name: 'Estimates'),
                Divider(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  height: 0,
                  thickness: 0.5,
                  indent: 16,
                  endIndent: 16,
                ),
                DrawerItem(image: 'assets/images/1.png', name: 'Projects'),
                Divider(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  height: 0,
                  thickness: 0.5,
                  indent: 16,
                  endIndent: 16,
                ),
                DrawerItem(
                    image: 'assets/images/Asset6.png', name: 'Cash Sales'),
                Divider(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  height: 0,
                  thickness: 0.5,
                  indent: 16,
                  endIndent: 16,
                ),
                DrawerItem(image: 'assets/images/d4.png', name: 'Update'),
              ],
            ),
          )),
      appBar: const Apptopbar(),
      body: BlocBuilder<ContactCubit, ContactState>(
        builder: (context, state) {
          if (!(state is ContactLoaded))
            return Center(child: CircularProgressIndicator());
          final contacts = (state as ContactLoaded).contacts;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const Header(
                  nameScreen: 'Contacts',
                  isback: false,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: contacts.map((e) => CardContact(e)).toList(),
                    ),
                  ),
                  // child: ListView.builder(
                  //   shrinkWrap: true,
                  //   itemCount: DataContact.datacontacts.length,
                  //   itemBuilder: (context, index) {
                  //     return CardContact(data: DataContact.datacontacts[index]);
                  //   },
                  // ),
                )
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomBar(
          tab1: TabItem(icon: 'assets/images/4.png', name: 'Help'),
          tab2: TabItem(icon: 'assets/images/5.png', name: 'Quick Report'),
          tab3: TabItem(icon: 'assets/images/3.png', name: 'Excel Report'),
          tab4: TabItem(
            icon: 'assets/images/6.png',
          ),
          fab: TabItem(
            icon: 'assets/images/add.png',
          )),
    );
  }

  Widget _Contact(Contact contact, context) {
    return InkWell(
      onTap: () =>
          Navigator.pushNamed(context, CONTACT_DETAIL, arguments: contact),
      child: Container(
        key: Key("${contact.id}"),
        child: Container(
          // key: Key("${widget.contact.id}"),
          height: 65,
          decoration: BoxDecoration(
              color:
                  // isShowOption
                  //     ? const Color.fromRGBO(242, 249, 205, 1)
                  Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  offset: const Offset(0.5, 0.5),
                  blurRadius: 1.5,
                  spreadRadius: 0.5,
                )
              ],
              borderRadius: BorderRadius.circular(3)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  flex: 7,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7.5),
                      child: CircleAvatar(
                          // backgroundImage:
                          //     AssetImage(widget.data.avatarImage)
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            contact.contactName,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Row(
                            children: [
                              contact.contactPhoneNum1 != null
                                  ? Text(
                                      contact.contactPhoneNum1,
                                      // "widget.data.phoneNumber",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    )
                                  : Text("no phone"),
                              const Text('  |  '),
                              contact.contactAdr1 != null
                                  ? Text(
                                      contact.contactAdr1,
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    )
                                  : Text("none")
                            ],
                          )
                        ],
                      ),
                    ),
                  ])),
              // Expanded(
              //   flex: 1,
              //   child: IconButton(
              //     onPressed: () {
              //       setState(() {
              //         isShowOption = !isShowOption;
              //       });
              //     },
              //     icon: Image.asset(
              //       'assets/images/ad.png',
              //       color: isShowOption
              //           ? const Color.fromRGBO(184, 161, 91, 1)
              //           : const Color.fromRGBO(202, 202, 202, 1),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
