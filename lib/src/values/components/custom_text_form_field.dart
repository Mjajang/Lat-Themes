import 'package:flutter/material.dart';
import 'package:lat_theme/src/values/constants/constants.dart';

class CustomTextFormFieldAuth extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? inputAction;
  final Function()? onEditingComplete;
  final IconData? suffixIcon;
  final Function()? onSuffixIconPressed;
  final bool showSuffixIcon;
  final IconData? prefixIcon;
  final bool showPrefixIcon;

  const CustomTextFormFieldAuth({
    Key? key,
    required this.title,
    this.obscureText = false,
    this.controller,
    this.keyboardType,
    this.inputAction,
    this.onEditingComplete,
    this.suffixIcon,
    this.onSuffixIconPressed,
    this.showSuffixIcon = false,
    this.prefixIcon,
    this.showPrefixIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.white,
                ),
          ),
          const SpaceHeight(10),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4,
                  offset: const Offset(0, 5),
                )
              ],
            ),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              keyboardType: keyboardType,
              textInputAction: inputAction,
              onEditingComplete: onEditingComplete,
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                prefixIcon: showPrefixIcon ? Icon(prefixIcon) : null,
                suffixIcon: showSuffixIcon
                    ? IconButton(
                        onPressed: onSuffixIconPressed,
                        icon: Icon(suffixIcon),
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
