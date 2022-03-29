import 'package:flutter/material.dart';
import 'package:test/constants/strings.dart';
import 'package:test/widgets/allwidgets.dart';
// import 'package:test/screens/contact_detail.dart';
import 'package:test/services/data.dart';

import '../data/models/contact.dart';
// import 'package:overlay_container/overlay_container.dart';

class CardContact extends StatefulWidget {
  // final DataContact data;
  final Contact contact;
  const CardContact(this.contact);

  @override
  State<CardContact> createState() => _CardContactState();
}

class _CardContactState extends State<CardContact> {
  bool isShowOption = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15 / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () => Navigator.pushNamed(
                context, CONTACT_DETAIL,
                arguments: widget.contact,

                // MaterialPageRoute(
                //     builder: (_) => ContactDetail(
                //           data: widget.data,
                //         )),
              ),
              child: Container(
                key: Key("${widget.contact.id}"),
                height: 65,
                decoration: BoxDecoration(
                    color: isShowOption
                        ? const Color.fromRGBO(242, 249, 205, 1)
                        : Colors.white,
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
                    // Text(widget.contact.contactName),
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
                                  widget.contact.contactName,
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                Row(
                                  children: [
                                    widget.contact.contactPhoneNum1 != null
                                        ? Text(
                                            widget.contact.contactPhoneNum1,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                          )
                                        : Text("none"),
                                    const Text('  |  '),
                                    widget.contact.contactEmailAdr1 != null
                                        ? Text(
                                            widget.contact.contactEmailAdr1,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                          )
                                        : Text("none")
                                  ],
                                )
                              ],
                            ),
                          ),
                        ])),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isShowOption = !isShowOption;
                          });
                        },
                        icon: Image.asset(
                          'assets/images/ad.png',
                          color: isShowOption
                              ? const Color.fromRGBO(184, 161, 91, 1)
                              : const Color.fromRGBO(202, 202, 202, 1),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            isShowOption
                ? Container(
                    width: 262,
                    height: 65,
                    margin: const EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(242, 249, 205, 1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        CardItem(
                            image: 'assets/images/d12.png',
                            name: 'Appointments'),
                        CardItem(image: 'assets/images/d2.png', name: 'Notes'),
                        CardItem(
                            image: 'assets/images/d3.png', name: 'Documents')
                      ],
                    ),
                  )
                : const SizedBox()
          ],
        ));
  }
}
