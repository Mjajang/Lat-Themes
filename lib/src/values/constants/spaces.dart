import 'package:flutter/material.dart';

class SpaceHeight extends StatelessWidget {
  final double height;
  const SpaceHeight(this.height, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(height: height);
}

class SpaceWidth extends StatelessWidget {
  final double width;
  const SpaceWidth(this.width, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(width: width);
}

class CustomDivider extends StatelessWidget {
  final double? indent;
  final double? endIndent;

  const CustomDivider({
    super.key,
    this.indent = 10,
    this.endIndent = 10,
  });

  @override
  Widget build(BuildContext context) => Divider(
        thickness: 1,
        indent: indent,
        endIndent: endIndent,
      );
}
