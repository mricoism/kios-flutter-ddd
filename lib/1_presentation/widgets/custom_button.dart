import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final Color color;
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        width: 70,
        height: 70,

        // color: Colors.blue, // Akan Error jika menggunakan 2 implemen warna pada satu item
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade200),
        child: InkWell(
          onTap: onTap,
          splashColor: Colors.white,
          customBorder:
              CircleBorder(), // ketika di rekan akan berbentuk circle efeknya
          child: Icon(
            icon,
            color: color,
          ),
        ),
      ),
    );
  }
}