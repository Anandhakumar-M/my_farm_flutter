// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:my_dairy_farm_frontend/utils/constants/constants.dart';

class CustomRichText extends StatefulWidget {
  final String FirstText;
  final String SecondText;
  final double FontSize;
  final dynamic FontWeights;

  const CustomRichText(
      {super.key,
      this.FirstText = 'demo',
      this.SecondText = '*',
      this.FontSize = 12,
      this.FontWeights = FontWeight.w400});

  @override
  State<CustomRichText> createState() => _CustomRichTextState();
}

class _CustomRichTextState extends State<CustomRichText> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: AppConstants.RichTextStyle_S.copyWith(
            fontSize: widget.FontSize, fontWeight: widget.FontWeights),
        children: [
          TextSpan(text: widget.FirstText),
          TextSpan(
            text: widget.SecondText,
            style: AppConstants.RichTextStyle_S.copyWith(
                color: AppConstants.secondaryColor_red,
                fontSize: widget.FontSize,
                fontWeight: widget.FontWeights),
          )
        ],
      ),
    );
  }
}
