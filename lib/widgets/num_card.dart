import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    Key? key,
    required this.title,
    this.myIcon,
  }) : super(key: key);

  final String title;
  final IconData? myIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        // color: primaryColor.withOpacity(0),
        color: Colors.transparent,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1111),
          side: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: Center(
          child: title != ''
              ? Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )
              : Icon(
                  myIcon,
                  size: (30),
                  color: Colors.white,
                ),
        ),
      ),
    );
  }

//
}
