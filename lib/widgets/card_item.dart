import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String image;
  final String name;
  const CardItem({Key key, this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Image.asset(
            image,
            width: 25,
            height: 25,
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(name, style: Theme.of(context).textTheme.overline))
      ],
    );
  }
}
