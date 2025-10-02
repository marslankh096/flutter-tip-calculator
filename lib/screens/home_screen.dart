import 'package:flutter/material.dart';
import '../utils/calculator.dart';
import '../widgets/tip_input.dart';
import '../widgets/tip_options.dart';
import '../widgets/tip_result.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  double _tip = 0.0;
  double _tipPercent = 0.20; // default 20%
  bool _roundUp = true;

  void _calculateTip() {
    final cost = double.tryParse(_controller.text);
    if (cost == null || cost <= 0) {
      setState(() => _tip = 0.0);
      return;
    }
    setState(() {
      _tip = calculateTip(cost, _tipPercent, _roundUp);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tip Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TipInput(controller: _controller),
            const SizedBox(height: 20),
            const Text("How was the service?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            TipOptions(
              selectedPercent: _tipPercent,
              onChanged: (value) {
               setState(() => _tipPercent = value ?? 0.20); // null-safe assignment
              },
            ),
            SwitchListTile(
              title: const Text("Round up tip"),
              value: _roundUp,
              onChanged: (val) => setState(() => _roundUp = val),
            ),
            ElevatedButton(
              onPressed: _calculateTip,
              child: const Text("Calculate"),
            ),
            const SizedBox(height: 16),
            TipResult(tip: _tip),
          ],
        ),
      ),
    );
  }
}
