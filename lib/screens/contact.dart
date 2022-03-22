export 'contact.dart';
import 'package:flutter/material.dart';
import 'package:test/services/data.dart';
import 'package:test/widgets/allwidgets.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const Header(
              nameScreen: 'Contacts',
              isback: false,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: DataContact.datacontacts.length,
                itemBuilder: (context, index) {
                  return CardContact(data: DataContact.datacontacts[index]);
                },
              ),
            )
          ],
        ),
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
}
