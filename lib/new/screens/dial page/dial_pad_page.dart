import 'package:flutter/material.dart';

class DialPadPage extends StatefulWidget {
  const DialPadPage({super.key});

  @override
  State<DialPadPage> createState() => _DialPadPageState();
}

class _DialPadPageState extends State<DialPadPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Dial Pad"),
    );
  }
}
