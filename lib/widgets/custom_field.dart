import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isSecure;
  final VoidCallback? onTap;

  const CustomField({
    super.key,
    required this.controller,
    required this.labelText,
    this.isSecure = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isSecure,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        fillColor: Colors.grey[100],
        filled: true,
        suffixIcon: onTap != null
            ? IconButton(
                icon: Icon(
                  isSecure ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: onTap,
              )
            : null,
      ),
    );
  }
}