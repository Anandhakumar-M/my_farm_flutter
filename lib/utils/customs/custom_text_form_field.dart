// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_dairy_farm_frontend/utils/constants/constants.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool isPassword;
  bool obscureTexts;
  final String Function(String?) validator;

  CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.obscureTexts = false,
    required this.validator,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AppConstants.textFieldTextStyle_L,
        contentPadding: const EdgeInsets.only(top: 16, left: 15, bottom: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppConstants.bordeColor_darkgray),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                    widget.obscureTexts
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: AppConstants.Icon_darkgray),
                onPressed: () {
                  setState(() {
                    widget.obscureTexts = !widget.obscureTexts;
                  });
                },
              )
            : null,
      ),
      obscureText: widget.obscureTexts,
      keyboardType: widget.keyboardType,
      validator: (value) => widget.validator(value!),
    );
  }
}
