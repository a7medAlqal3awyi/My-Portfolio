import 'package:flutter/material.dart';

class BorderedFlatButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double width;
  final double height;

  const BorderedFlatButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        onPressed: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: const BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
