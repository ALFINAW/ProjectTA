import 'package:flutter/material.dart';

class QTextFieldFormDark extends StatefulWidget {
  final String? id;
  final String label;
  final String? value;
  final String? hint;
  final String? helper;
  final String? Function(String?)? validator;
  final bool obscure;
  final bool enabled;
  final int? maxLength;

  final Function(String) onChanged;
  final Function(String)? onSubmitted;

  const QTextFieldFormDark({
    Key? key,
    required this.label,
    this.id,
    this.value,
    this.validator,
    this.hint,
    this.helper,
    this.maxLength,
    required this.onChanged,
    this.onSubmitted,
    this.obscure = false,
    this.enabled = true,
  }) : super(key: key);

  @override
  State<QTextFieldFormDark> createState() => _QTextFieldState();
}

class _QTextFieldState extends State<QTextFieldFormDark> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    textEditingController.text = widget.value ?? "";
    super.initState();
  }

  getValue() {
    return textEditingController.text;
  }

  setValue(value) {
    textEditingController.text = value;
  }

  resetValue() {
    textEditingController.text = "";
  }

  focus() {
    focusNode.requestFocus();
  }

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12.0,
      ),
      child: TextFormField(
        enabled: widget.enabled,
        controller: textEditingController,
        focusNode: focusNode,
        validator: widget.validator,
        maxLength: widget.maxLength,
        obscureText: widget.obscure,
        decoration: InputDecoration(
          labelText: widget.label,
          helperText: widget.helper,
          hintText: widget.hint,
        ),
        onChanged: (value) {
          widget.onChanged(value);
        },
        onFieldSubmitted: (value) {
          if (widget.onSubmitted != null) widget.onSubmitted!(value);
        },
      ),
    );
  }
}
