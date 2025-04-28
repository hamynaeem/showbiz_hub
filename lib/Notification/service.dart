import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter/material.dart';

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  // Handle background tap here (you can log or navigate later)
  debugPrint(
      'Notification tapped in background: ${notificationResponse.payload}');
}

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();

  factory NotificationService() {
    return _instance;
  }

  NotificationService._internal();

  final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    tz.initializeTimeZones();
    // final String currentTimeZone = DateTime.now().timeZoneName;
    tz.setLocalLocation(tz.getLocation('Asia/Karachi'));

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    final DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
    );
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await _notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        // Foreground / background (while app is in memory)
        debugPrint(
            'Notification tapped (foreground/background): ${response.payload}');
      },
      onDidReceiveBackgroundNotificationResponse:
          notificationTapBackground, // <-- this is the key part
    );
  }

  Future<void> scheduleWeeklyNotification({
    required int id,
    required int weekday,
    required TimeOfDay time,
  }) async {
    final now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      time.hour,
      time.minute,
    );

    while (scheduledDate.weekday != weekday) {
      scheduledDate = scheduledDate.add(Duration(days: 1));
    }

    await _notificationsPlugin.zonedSchedule(
      id,
      "Reminder",
      "It's time!",
      scheduledDate,
      _notificationDetails(),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      // uiLocalNotificationDateInterpretation:
      //     UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
    );
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'your_channel_id', // id
      'your_channel_name', // name
      description: 'your_channel_description',
      importance: Importance.max,

      // priority: Priority.high,
    );
    await _notificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }

  NotificationDetails _notificationDetails() {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        'your_channel_id',
        'your_channel_name',
        channelDescription: 'your_channel_description',
        importance: Importance.max,
        priority: Priority.high,
        enableLights: true,
        enableVibration: true,
        playSound: true,
      ),
    );
  }
}
