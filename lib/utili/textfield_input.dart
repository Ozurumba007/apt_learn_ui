import 'package:flutter/material.dart';

class TextfieldInput extends StatelessWidget {
  final String hintText;
  const TextfieldInput({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.deepPurple[50],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 6.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
