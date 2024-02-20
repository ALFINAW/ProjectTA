import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class QOutlineButtonProductDark extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double? width;
  final IconData? icon;
  QOutlineButtonProductDark(
      {Key? key,
      required this.label,
      required this.onPressed,
      this.width,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.only(left: 20.0),
          side: BorderSide(
            color: primaryColor,
            width: 1.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () => onPressed(),
        child: Row(
          children: [
            if (icon != null)
              Icon(
                icon,
                color: primaryColor,
              ),
            const SizedBox(width: 5.0),
            Text(
              label,
              style: TextStyle(
                fontSize: 16.0,
                color: primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
