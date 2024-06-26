import 'package:flutter/material.dart';

class QMemoField extends StatefulWidget {
  final String label;
  final String? value;
  final String? hint;
  final String? helper;
  final String? Function(String?)? validator;
  final int? maxLength;
  final int? maxLines;
  final Function(String) onChanged;

  QMemoField({
    Key? key,
    required this.label,
    this.value,
    this.validator,
    this.hint,
    this.helper,
    required this.onChanged,
    this.maxLength,
    this.maxLines,
  }) : super(key: key);

  State<QMemoField> createState() => _QMemoFieldState();
}

class _QMemoFieldState extends State<QMemoField> {
  FocusNode focusNode = FocusNode();
  GlobalKey key = GlobalKey();

  void initState() {
    focusNode.addListener(() {
      print("focusNodeListener");
      if (focusNode.hasFocus) {
        Future.delayed(Duration(milliseconds: 300), () {
          WidgetsBinding.instance
              .addPostFrameCallback((_) => Scrollable.ensureVisible(
                    key.currentContext!,
                    alignmentPolicy:
                        ScrollPositionAlignmentPolicy.keepVisibleAtEnd,
                  ));
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (focusNode.hasFocus) {
      Future.delayed(Duration(milliseconds: 300), () {
        WidgetsBinding.instance
            .addPostFrameCallback((_) => Scrollable.ensureVisible(
                  key.currentContext!,
                  alignmentPolicy:
                      ScrollPositionAlignmentPolicy.keepVisibleAtEnd,
                ));
      });
    }
    return Container(
      margin: EdgeInsets.only(bottom: 12.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, 11),
          ),
        ],
      ),
      child: TextFormField(
        key: key,
        initialValue: widget.value,
        focusNode: focusNode,
        validator: widget.validator,
        maxLength: widget.maxLength,
        maxLines: widget.maxLines ?? 6,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 24.0,
          ),
          labelText: widget.label,
          // suffixIcon: Icon(
          //   Icons.text_format,
          // ),
          helperText: widget.helper,
          hintText: widget.hint,
          filled: true,
          fillColor: Colors.grey[300],
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}
