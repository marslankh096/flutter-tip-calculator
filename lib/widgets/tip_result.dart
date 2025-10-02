import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TipResult extends StatelessWidget {
  final double tip;
  const TipResult({super.key, required this.tip});

  @override
  Widget build(BuildContext context) {
    final formatted = NumberFormat.currency(symbol: "\$").format(tip);
    return Text(
      "Tip Amount: $formatted",
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
