import 'package:flutter/material.dart';

class TextInputCustom extends StatelessWidget {
  final String hintText;
  final int? maxlines;
  const TextInputCustom({Key? key, required this.hintText, this.maxlines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: maxlines != null ? maxlines! * 35 : 35,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: TextField(
          maxLines: maxlines ?? 1,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8)),
              border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
        ),
      ),
    );
  }
}
