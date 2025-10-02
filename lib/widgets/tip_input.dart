import 'package:flutter/material.dart';

class TipInput extends StatelessWidget {
  final TextEditingController controller;
  const TipInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: "Cost of Service",
        border: OutlineInputBorder(),
      ),
    );
  }
}
