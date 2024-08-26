import 'package:flutter/material.dart';
import 'package:softphone/new/screens/call%20history/local%20widgets/call_history_tile.dart';
import 'package:softphone/new/screens/call%20history/local%20widgets/call_history_title.dart';

class CallHistory extends StatefulWidget {
  const CallHistory({super.key});

  @override
  State<CallHistory> createState() => _CallHistoryState();
}

class _CallHistoryState extends State<CallHistory> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
        flex: 1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CallHistoryTitle(title: 'History'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
              CallHistoryTile(title: 'Name/Number', subtitle: 'Time of call'),
            ],
          ),

        ));
  }
}
