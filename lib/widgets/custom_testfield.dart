import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends ConsumerWidget {
  final bool obscureText;
  final String hintText;
  final TextEditingController contoller;
  final TextInputType textInputType;
  const CustomTextField({
    super.key,
    required this.textInputType,
    required this.contoller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 50,
      child: TextField(
        cursorColor: Colors.blue,
        controller: contoller,
        obscureText: obscureText,
        keyboardType: obscureText
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w300),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
        ),
        onSubmitted: (_) {
          FocusScope.of(context).nextFocus();
        },
      ),
    );
  }
}
