import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String image;
  final String name;
  const DrawerItem({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
