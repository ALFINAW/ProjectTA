import 'package:flutter/material.dart';

Widget FloatingAction({
  required Function onPressed,
}) {
  return FloatingActionButton(
    key: UniqueKey(),
    heroTag: UniqueKey(),
    child: Icon(Icons.add),
    onPressed: () => onPressed(),
  );
}
