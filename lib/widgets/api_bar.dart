import 'package:flutter/material.dart';
import 'package:pharmix/Utilities/colors.dart';
import 'package:pharmix/Utilities/image_path.dart';

class APIBar extends StatelessWidget {
  const APIBar({
    super.key,
    required this.signType,
    required this.isIn,
  });

  final String signType;
  final bool isIn;

  @override
  Widget build(BuildContext context) {
    var imagePath = '';
    switch (signType) {
      case 'google':
        imagePath = googleIcon;
        break;
      case 'apple':
        imagePath = appleIcon;
        break;
      case 'facebook':
        imagePath = facebookIcon;
        break;
    }

    return Container(
      decoration: const ShapeDecoration(
        shape: CircleBorder(),
        shadows: [
          BoxShadow(
            color: Color(0x3F8FBDFD),
            blurRadius: 10,
            offset: Offset(0, 4),
            spreadRadius: 5,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith(
            (states) => const CircleBorder(),
          ),
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Colors.white),
          overlayColor:
              MaterialStateColor.resolveWith((states) => primaryColor),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset(imagePath, height: 35, width: 35),
          ),
        ),
      ),
    );
  }
}
