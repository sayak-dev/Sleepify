import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:sleep/alarm-page/alarm_bloc.dart';
import 'package:sleep/alarm-page/alarm_events.dart';
import 'package:sleep/alarm-page/time-picker.dart';
import 'package:sleep/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sleep/global_events.dart';

class AlarmTimePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AlarmTimePickerState();
}

class AlarmTimePickerState extends State<AlarmTimePicker> {
  AlarmBloc _alarmBloc;

  @override
  void initState() {
    _alarmBloc = AlarmBloc();
    super.initState();
  }

  @override
  void deactivate() {
    super.deactivate();
    _alarmBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      TimePicker(
        alarmBloc: _alarmBloc,
      ),
      Container(
          child: Row(
        children: [
          Text(
            "Sunday",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Monday",
            style: TextStyle(color: Colors.white),
          )
        ],
      ))
    ]);
  }
}