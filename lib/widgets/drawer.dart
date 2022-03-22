import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String image;
  final String name;
  const DrawerItem({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var annouceCount = 15;
    return name == "Projects"
        ? Container(
            padding: const EdgeInsets.fromLTRB(15, 7.5, 15, 7.5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      image,
                      height: 20,
                      width: 20,
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
                Padding(
                  padding: const EdgeInsets.only(left: 7.5),
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.overline,
                  ),
                )
              ],
            ),
          )
        : Container(
            padding: const EdgeInsets.fromLTRB(15, 7.5, 15, 7.5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  height: 20,
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7.5),
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.overline,
                  ),
                )
              ],
            ),
          );
  }
}
