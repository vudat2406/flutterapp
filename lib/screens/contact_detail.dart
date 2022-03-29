export 'contact_detail.dart';
import 'package:flutter/material.dart';
import 'package:test/services/data.dart';
import 'package:test/widgets/allwidgets.dart';

import '../data/models/contact.dart';

class ContactDetail extends StatefulWidget {
  // final DataContact data;
  final Contact contact;
  const ContactDetail({Key key, this.contact}) : super(key: key);

  @override
  State<ContactDetail> createState() => _ContactDetailState();
}

class _ContactDetailState extends State<ContactDetail> {
  final Color backgroundColor = const Color.fromRGBO(243, 245, 229, 1);
  bool isCustomer = false;
  bool isActive = false;
  bool isSupplier = false;
  bool isLockAccount = false;

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const Header(
                nameScreen: 'Contact Infomation',
                isback: true,
              ),
              const SizedBox(
                height: 30,
              ),
              // Text(widget.contact.contactName),
              NameSession(
                  backgroundColor: backgroundColor, contact: widget.contact),
              const SizedBox(
                height: 15,
              ),
              PhoneAndEmailSession(
                backgroundColor: backgroundColor,
                contact: widget.contact,
              ),
              const SizedBox(
                height: 15,
              ),
              AddressSession(
                backgroundColor: backgroundColor,
                contact: widget.contact,
              ),
              const SizedBox(
                height: 15,
              ),
              TaxSession(
                backgroundColor: backgroundColor,
                contact: widget.contact,
              ),
              const SizedBox(
                height: 15,
              ),
              SearchTagsSession(
                backgroundColor: backgroundColor,
                contact: widget.contact,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SwitchCustom(value: isCustomer, name: 'CUSTOMER'),
                      SwitchCustom(value: isSupplier, name: 'SUPPLIER'),
                    ],
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SwitchCustom(value: isActive, name: 'ACTIVE'),
                      SwitchCustom(value: isLockAccount, name: 'LOCK ACCOUNT')
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(
          tab1: TabItem(icon: 'assets/images/esti.png', name: 'Estimates'),
          tab2: TabItem(icon: 'assets/images/1.png', name: 'Projects'),
          tab3: TabItem(icon: 'assets/images/Asset6.png', name: 'Cash Sales'),
          tab4: TabItem(icon: 'assets/images/more.png', name: 'More'),
          fab: TabItem(
            icon: 'assets/images/scan.png',
          )),
    );
  }
}

class PhoneAndEmailSession extends StatelessWidget {
  const PhoneAndEmailSession({
    Key key,
    this.backgroundColor,
    this.contact,
  }) : super(key: key);
  final Contact contact;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeader(text: 'Phone Number:'),
            TextInputCustom(
              hintText: contact.contactPhoneNum1 != null
                  ? contact.contactPhoneNum1
                  : "none",
              type: TextInputType.phone,
            ),
            TextInputCustom(
              hintText: contact.contactPhoneNum2 != null
                  ? contact.contactPhoneNum2
                  : "none",
              type: TextInputType.phone,
            ),
            TextInputCustom(
              hintText: contact.contactPhoneNum3 != null
                  ? contact.contactPhoneNum3
                  : "none",
              type: TextInputType.phone,
            ),
            SizedBox(
              height: 10,
            ),
            TextHeader(text: 'Email Address:'),
            TextInputCustom(
              hintText: contact.contactEmailAdr1 != null
                  ? contact.contactEmailAdr1
                  : "none",
              type: TextInputType.emailAddress,
            ),
            TextInputCustom(
              hintText: contact.contactEmailAdr2 != null
                  ? contact.contactEmailAdr2
                  : "none",
              type: TextInputType.emailAddress,
            ),
          ],
        ),
      ),
    );
  }
}

class SearchTagsSession extends StatelessWidget {
  const SearchTagsSession({
    Key key,
    this.backgroundColor,
    this.contact,
  }) : super(key: key);
  final Contact contact;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TextHeader(text: 'Search Tags:'),
            TextInputCustom(
              hintText: 'e.g Company Name, Trade Service, Product Name',
              maxlines: 2,
              type: TextInputType.text,
            ),
          ],
        ),
      ),
    );
  }
}

class TaxSession extends StatelessWidget {
  const TaxSession({
    Key key,
    this.backgroundColor,
    this.contact,
  }) : super(key: key);
  final Contact contact;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeader(text: 'Tax Region:'),
            TextInputCustom(
              hintText:
                  contact.taxRegionId != null ? contact.taxRegionId : "none",
              type: TextInputType.text,
            ),
            SizedBox(
              height: 10,
            ),
            TextHeader(text: 'Tax Refference:'),
            TextInputCustom(
              hintText:
                  contact.taxReference != null ? contact.taxReference : "none",
              type: TextInputType.text,
            ),
            SizedBox(
              height: 10,
            ),
            TextHeader(text: 'Invoice Terms:'),
            TextInputCustom(
              hintText: contact.terms != null ? contact.terms : "none",
              type: TextInputType.text,
            ),
            SizedBox(
              height: 10,
            ),
            TextHeader(text: 'Invoice Note:'),
            TextInputCustom(
              hintText: contact.notes != null ? contact.notes : "none",
              maxlines: 2,
              type: TextInputType.text,
            ),
          ],
        ),
      ),
    );
  }
}

class AddressSession extends StatelessWidget {
  const AddressSession({
    Key key,
    this.backgroundColor,
    this.contact,
  }) : super(key: key);

  final Color backgroundColor;
  final Contact contact;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeader(text: 'Address:'),
            TextInputCustom(
              hintText:
                  contact.contactAdr1 != null ? contact.contactAdr1 : "none",
              type: TextInputType.streetAddress,
            ),
            TextInputCustom(
              hintText:
                  contact.contactAdr2 != null ? contact.contactAdr2 : "none",
              type: TextInputType.streetAddress,
            ),
            TextInputCustom(
              hintText:
                  contact.contactAdr3 != null ? contact.contactAdr3 : "none",
              type: TextInputType.streetAddress,
            ),
            TextInputCustom(
              hintText:
                  contact.contactAdr4 != null ? contact.contactAdr4 : "none",
              type: TextInputType.streetAddress,
            ),
            TextInputCustom(
              hintText: contact.contactAdrZip != null
                  ? contact.contactAdrZip
                  : "none",
              type: TextInputType.streetAddress,
            ),
            TextInputCustom(
              hintText: contact.contactAdrCountry != null
                  ? contact.contactAdrCountry
                  : "none",
              type: TextInputType.streetAddress,
            ),
            TextInputCustom(
              hintText: 'Postal Code',
              type: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
}

class NameSession extends StatelessWidget {
  const NameSession({
    Key key,
    this.backgroundColor,
    this.contact,
  }) : super(key: key);

  final Color backgroundColor;
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 30,
          height: 108,
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(8)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Stack(clipBehavior: Clip.none, children: [
                  Text(contact.contactName,
                      style: Theme.of(context).textTheme.headline1),
                  Positioned(
                      right: -20,
                      top: 4,
                      child: Image.asset(
                        'assets/images/edit.png',
                        width: 13,
                      ))
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Stack(clipBehavior: Clip.none, children: [
                  Text(
                    'On Sport Company',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Positioned(
                      right: -20,
                      top: 3,
                      child: Image.asset(
                        'assets/images/edit.png',
                        width: 13,
                      ))
                ]),
              ),
            ],
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 15 - 37,
          top: -37,
          width: 74,
          height: 74,
          child: CircleAvatar(
              // backgroundImage: AssetImage(data.avatarImage)
              ),
        ),
        Positioned(
            left: MediaQuery.of(context).size.width / 2,
            top: 15,
            width: 20,
            height: 20,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white),
              child: Image.asset('assets/images/edit.png'),
            )),
      ],
    );
  }
}
