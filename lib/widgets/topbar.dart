import 'package:flutter/material.dart';

class Apptopbar extends StatelessWidget with PreferredSizeWidget {
  const Apptopbar({Key? key}) : super(key: key);
  final int annouceCount = 15;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 7),
        child: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Image.asset(
            'assets/images/Asset1.png',
          ),
        ),
      ),
      title: Image.asset(
        'assets/images/Asset2.png',
        width: 105,
      ),
      centerTitle: false,
      actions: [
        Stack(
          alignment: Alignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/Asset3.png',
                  width: 20,
                )),
            Positioned(
                top: 10,
                right: 8,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(133, 37, 43, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(2, 0, 2, 6),
                    child: Text(
                      '$annouceCount',
                      style: const TextStyle(fontSize: 10),
                    ),
                  ),
                ))
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/Asset4.png',
              width: 20,
            )),
        Padding(
          padding: const EdgeInsets.only(right: 7),
          child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/Asset5.png',
                width: 20,
              )),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
