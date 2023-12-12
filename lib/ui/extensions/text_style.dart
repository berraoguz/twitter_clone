import 'package:flutter/material.dart';
import 'package:twitter_clone/gen/fonts.gen.dart';

extension TextStyleExt on TextStyle {
  TextStyle get sfpro => copyWith(fontFamily: FontFamily.sFPro);
}

extension Test on String {
  toUppercaseFirstLetter() {
    if (isNotEmpty) {
      if (length > 2) {
        return this[0].toUpperCase() + substring(1).toLowerCase();
      } else {
        return toUpperCase();
      }
    } else {
      throw Exception('String is empty');
    }
  }
}
