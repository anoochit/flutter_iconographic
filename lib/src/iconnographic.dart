import 'package:flutter/material.dart';
import 'package:flutter_iconographic/src/iconnowidget.dart';

/// A widget that displays an icon as a graph
class Iconographic extends StatelessWidget {
  /// Constructor for the Iconographic widget
  ///
  /// The following arguments are required:
  ///  - `value`: The current value.
  ///  - `max`: The max value.
  ///  - `showHalf`: Show a half icon.
  ///  - `iconoWidget`: Specify icon widget.
  ///  - `direction`: The direction of an icon widget.
  const Iconographic({
    super.key,
    required this.value,
    required this.max,
    required this.showHalf,
    required this.iconoWidget,
    required this.direction,
  });

  final double value;
  final int max;
  final bool showHalf;
  final IconoWidget iconoWidget;
  final Axis direction;

  @override
  Widget build(BuildContext context) {
    List<Widget> emptyIcons;
    List<Widget> halfIcons;
    List<Widget> fullIcons;

    if (showHalf) {
      fullIcons = List<Widget>.generate(
        value.floor(),
        (index) => Transform.scale(
          scaleY: (direction.index == Axis.vertical.index) ? -1 : 1,
          child: iconoWidget.full,
        ),
      );
      halfIcons = List<Widget>.generate(
        1,
        (index) => Transform.scale(
          scaleY: (direction.index == Axis.vertical.index) ? -1 : 1,
          child: iconoWidget.half!,
        ),
      );
      emptyIcons = List<Widget>.generate(
        max - value.ceil(),
        (index) => Transform.scale(
          scaleY: (direction.index == Axis.vertical.index) ? -1 : 1,
          child: iconoWidget.empty,
        ),
      );
      fullIcons.addAll(halfIcons);
    } else {
      fullIcons = List<Widget>.generate(
        value.floor(),
        (index) => Transform.scale(
          scaleY: (direction.index == Axis.vertical.index) ? -1 : 1,
          child: iconoWidget.full,
        ),
      );
      emptyIcons = List<Widget>.generate(
        max - value.toInt(),
        (index) => Transform.scale(
          scaleY: (direction.index == Axis.vertical.index) ? -1 : 1,
          child: iconoWidget.empty,
        ),
      );
    }

    fullIcons.addAll(emptyIcons);
    return Transform.scale(
      scaleY: (direction.index == Axis.vertical.index) ? -1 : 1,
      child: Wrap(
        direction: direction,
        children: fullIcons,
      ),
    );
  }
}
