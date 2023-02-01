import 'package:flutter/cupertino.dart';

extension StringExtension on String {
  ValueKey get valueKey => ValueKey(this);
}