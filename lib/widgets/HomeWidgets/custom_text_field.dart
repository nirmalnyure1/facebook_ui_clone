import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final bool isPassword;
  final bool isEmail;

  MyTextFormField({
    required this.hintText,
    required this.validator,
    required this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.all(15.0),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          filled: true,
          fillColor: Colors.grey[200],
        ),
        obscureText: isPassword ? true : false,
        validator: validator!,
        onSaved: onSaved,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}
