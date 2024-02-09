import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class QOutlineButtonDark extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double? width;
  QOutlineButtonDark({
    Key? key,
    required this.label,
    required this.onPressed,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: 51,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
          side: BorderSide(
            color: primaryColor,
            width: 1.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
        ),
        onPressed: () => onPressed(),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
