import 'package:flutter/material.dart';

enum ButtonStyle { filled, outlined, text }

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
      child: style == ButtonStyle.filled
          ? FilledButton(
              onPressed: disabled ? null : onPressed,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Text(
                label,
                textAlign: TextAlign.center,
              ),
            )
          : style == ButtonStyle.outlined
              ? OutlinedButton(
                  onPressed: disabled ? null : onPressed,
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                  child: Text(
                    label,
                    style: Theme.of(context).primaryTextTheme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
                )
              : TextButton(
                  onPressed: disabled ? null : onPressed,
                  child: Text(
                    label,
                    style: Theme.of(context).primaryTextTheme.labelLarge,
                  ),
                ),
    );
  }
}
