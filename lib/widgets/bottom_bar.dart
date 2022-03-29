import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final TabItem tab1;
  final TabItem tab2;
  final TabItem tab3;
  final TabItem tab4;
  final TabItem fab;

  const BottomBar(
      {Key key, this.tab1, this.tab2, this.tab3, this.tab4, this.fab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
              height: 90,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(192, 209, 125, 1),
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TabCard(
                    item: tab1,
                  ),
                  TabCard(
                    item: tab2,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  TabCard(
                    item: tab3,
                  ),
                  TabCard(
                    item: tab4,
                  ),
                ],
              )),
          Positioned(
            left: MediaQuery.of(context).size.width / 2 - 15 - 45 / 2,
            bottom: 55,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  fab.icon,
                  width: 45,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TabCard extends StatelessWidget {
  final int annouceCount = 15;
  final TabItem item;
  const TabCard({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return item.name == 'Projects'
        ? Container(
            padding: const EdgeInsets.only(top: 10),
            margin: const EdgeInsets.only(right: 35),
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      item.icon,
                      color: Colors.black.withOpacity(0.7),
                      width: 30,
                      height: 30,
                    ),
                    Positioned(
                        top: -5,
                        right: -7,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(133, 37, 43, 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
                            child: Text(
                              '$annouceCount',
                              style: const TextStyle(
                                  fontSize: 10, color: Colors.white),
                            ),
                          ),
                        ))
                  ],
                ),
                item.name != null
                    ? Text(
                        item.name,
                        style: Theme.of(context).textTheme.overline.copyWith(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                      )
                    : const SizedBox()
              ],
            ),
          )
        : Container(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Image.asset(
                  item.icon,
                  color: Colors.black.withOpacity(0.7),
                  width: 30,
                  height: 30,
                ),
                item.name != null
                    ? Text(
                        item.name,
                        style: Theme.of(context).textTheme.overline.copyWith(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                      )
                    : const SizedBox()
              ],
            ),
          );
  }
}

class TabItem {
  String icon;
  String name;
  TabItem({this.icon, this.name});
}
