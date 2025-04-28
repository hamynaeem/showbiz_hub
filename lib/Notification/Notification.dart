import 'package:disable_battery_optimization/disable_battery_optimization.dart';
import 'package:flutter/material.dart';
import 'package:showbiz_hub/Appbar/appbar.dart';
import 'package:showbiz_hub/Notification/service.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  TimeOfDay _selectedTime = TimeOfDay.now();
  final List<bool> _selectedDays = List.generate(7, (_) => false);

  final List<String> _dayLabels = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

  void _showDayTimeDialog() async {
    await showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          title: Text('Select Time & Days for Notifications'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Time Picker
              ElevatedButton(
                onPressed: () async {
                  TimeOfDay? picked = await showTimePicker(
                    context: context,
                    initialTime: _selectedTime,
                  );
                  if (picked != null) {
                    setState(() {
                      _selectedTime = picked;
                    });
                  }
                },
                child: Text('Select Time: ${_selectedTime.format(context)}'),
              ),
              SizedBox(height: 20),
              // Day Selector
              ToggleButtons(
                direction: Axis.vertical,
                isSelected: _selectedDays,
                onPressed: (int index) {
                  setState(() {
                    _selectedDays[index] = !_selectedDays[index];
                  });
                },
                children: _dayLabels
                    .map((day) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Text(day),
                        ))
                    .toList(),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () => Navigator.pop(context),
            ),
            ElevatedButton(
              child: Text("Schedule Notifications"),
              onPressed: () {
                _scheduleSelectedNotifications();
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _scheduleSelectedNotifications() {
    final now = DateTime.now();

    for (int i = 0; i < _selectedDays.length; i++) {
      if (_selectedDays[i]) {
        final dayOffset = (i - now.weekday + 1 + 7) % 7;

        DateTime(
          now.year,
          now.month,
          now.day,
          _selectedTime.hour,
          _selectedTime.minute,
        ).add(Duration(days: dayOffset));

        NotificationService().scheduleWeeklyNotification(
          id: i + 1,
          weekday: i + 1, // 1 = Monday, ..., 7 = Sunday
          time: _selectedTime,
        );
      }
    }
  }

  @override
  void initState() {
    super.initState();
    DisableBatteryOptimization.showDisableAllOptimizationsSettings(
        "Enable Auto Start",
        "Follow the steps and enable the auto start of this app",
        "Your device has additional battery optimization",
        "Follow the steps and disable the optimizations to allow smooth functioning of this app");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Notification Scheduler'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _showDayTimeDialog,
              child: Text('Set Weekly Notification'),
            ),
            SizedBox(height: 20),
            Text(
              'Notifications will be sent at ${_selectedTime.format(context)} on: ${_getSelectedDaysString()}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  String _getSelectedDaysString() {
    List<String> selectedDays = [];
    for (int i = 0; i < _selectedDays.length; i++) {
      if (_selectedDays[i]) {
        selectedDays.add(_dayLabels[i]);
      }
    }
    return selectedDays.join(', ');
  }
}
