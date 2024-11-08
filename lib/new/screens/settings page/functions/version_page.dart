import 'package:flutter/material.dart';

class VersionPage extends StatelessWidget {
  const VersionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Version"),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text('...............'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
