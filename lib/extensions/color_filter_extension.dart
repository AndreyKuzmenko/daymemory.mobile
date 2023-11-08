import 'package:flutter/material.dart';

extension ToColorFilter on Color {
  ColorFilter toColorFilter() => ColorFilter.mode(this, BlendMode.srcIn);
}
