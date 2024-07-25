import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index){
                    return const Text('History Page');
                  }
              ))
        ]);
  }
}
