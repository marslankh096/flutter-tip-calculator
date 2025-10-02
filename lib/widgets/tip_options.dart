import 'package:flutter/material.dart';

class TipOptions extends StatelessWidget {
  final double selectedPercent;
  final ValueChanged<double?> onChanged; // accepts nullable double

  const TipOptions({
    super.key,
    required this.selectedPercent,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<double>(
          title: const Text("Amazing (20%)"),
          value: 0.20,
          groupValue: selectedPercent,
          onChanged: (value) => onChanged(value),
        ),
        RadioListTile<double>(
          title: const Text("Good (18%)"),
          value: 0.18,
          groupValue: selectedPercent,
          onChanged: (value) => onChanged(value),
        ),
        RadioListTile<double>(
          title: const Text("Okay (15%)"),
          value: 0.15,
          groupValue: selectedPercent,
          onChanged: (value) => onChanged(value),
        ),
      ],
    );
  }
}
