import 'package:flutter/material.dart';

/// An icon widget you can specify icon for full, half and empty
class IconoWidget {
  final Widget full;
  final Widget? half;
  final Widget empty;
  IconoWidget({
    required this.full,
    this.half,
    required this.empty,
  });
}
