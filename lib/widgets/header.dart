import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String nameScreen;
  final bool isback;
  const Header({Key key, this.nameScreen, this.isback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 7.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            nameScreen,
            style: Theme.of(context).textTheme.headline6,
          ),
          isback
              ? GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    '< CANCEL',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
