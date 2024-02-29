import 'package:flutter/material.dart';

enum ButtonStyle { filled, filledSecondary, outlined, text }

class CustomButton extends StatelessWidget {
  const CustomButton.filled({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.filled,
    this.width = double.infinity,
    this.height = 40.0,
    this.borderRadius = 6.0,
    this.icon,
    this.disabled = false,
    this.fontSize = 12.0,
  });

  const CustomButton.filledSecondary({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.filledSecondary,
    this.width = double.infinity,
    this.height = 40.0,
    this.borderRadius = 6.0,
    this.icon,
    this.disabled = false,
    this.fontSize = 12.0,
  });

  const CustomButton.outlined({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.outlined,
    this.width = double.infinity,
    this.height = 40.0,
    this.borderRadius = 6.0,
    this.icon,
    this.disabled = false,
    this.fontSize = 12.0,
  });

  const CustomButton.text({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.text,
    this.width = double.infinity,
    this.height = 40.0,
    this.borderRadius = 6.0,
    this.icon,
    this.disabled = false,
    this.fontSize = 12.0,
  });

  final Function() onPressed;
  final String label;
  final ButtonStyle style;
  final double width;
  final double height;
  final double borderRadius;
  final Widget? icon;
  final bool disabled;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: _buildButtonStyle(context),
    );
  }

  Widget _buildButtonStyle(BuildContext context) {
    switch (style) {
      case ButtonStyle.filled:
        return FilledButton(
          onPressed: disabled ? null : onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: Text(label, textAlign: TextAlign.center),
        );

      case ButtonStyle.filledSecondary:
        return FilledButton(
          onPressed: disabled ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Colors.black,
                ),
          ),
        );

      case ButtonStyle.outlined:
        return OutlinedButton(
          onPressed: disabled ? null : onPressed,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
          child: Text(label, textAlign: TextAlign.center),
        );

      case ButtonStyle.text:
      default: // Best practice to have a default case
        return TextButton(
          onPressed: disabled ? null : onPressed,
          child:
              Text(label, style: Theme.of(context).primaryTextTheme.labelLarge),
        );
    }
  }
}
