// import 'dart:developer';
//
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
//
// class NotificationService {
//   FlutterLocalNotificationsPlugin localNotificationsPlugin = FlutterLocalNotificationsPlugin();
//   AndroidInitializationSettings androidInitializationSettings =
//   const AndroidInitializationSettings("@mipmap/ic_launcher");
//   DarwinInitializationSettings darwinInitializationSettings = const DarwinInitializationSettings(
//     requestAlertPermission: true,
//     requestSoundPermission: true,
//     requestBadgePermission: true,
//     defaultPresentSound: false,
//     defaultPresentAlert: true,
//     defaultPresentBadge: true,
//   );
//
//   AndroidNotificationDetails androidNotificationDetails =  const AndroidNotificationDetails(
//     "demo_100",
//     "demo_app",
//     channelDescription: "This is custom soudn msg",
//     priority: Priority.max,
//     playSound: true,
//     sound: RawResourceAndroidNotificationSound('ring.wav'), // Default sound
//     importance: Importance.max,
//
//   );
//   //  AndroidNotificationChannel channel = const AndroidNotificationChannel(
//   //   'demooo_55', // Replace with your channel ID
//   //   'notify', // Replace with your channel name
//   //  // 'your_channel_description', // Replace with your channel description
//   //   importance: Importance.max,
//   //   playSound: true,
//   //   sound: RawResourceAndroidNotificationSound('ring'),
//   //  // priority: Priority.max,
//   // );
//
//
//   // localNotificationsPlugin
//   //     .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
//   //     ?.createNotificationChannel(channel);
//   DarwinNotificationDetails darwinNotificationDetails = const DarwinNotificationDetails();
//
//   Future<void> initializeNotification() async {
//     InitializationSettings initializationSettings =
//     InitializationSettings(android: androidInitializationSettings, iOS: darwinInitializationSettings);
//     await localNotificationsPlugin.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse: (response) {
//         if (response.payload != null) {
//           log(response.payload.toString());
//           // Map<dynamic, dynamic> map = jsonDecode(response.payload.toString());
//         }
//       },
//     ).catchError((e) {
//       throw Exception(e);
//     });
//   }
//
//   Future<void> showNotification(String fcmToken, String title, String body, {required String sound}) async {
//     AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
//       "demo",
//       "demo_app",
//       priority: Priority.max,
//       playSound: true,
//       sound: sound != null ? RawResourceAndroidNotificationSound(sound) : null,
//       importance: Importance.max,
//     );
//
//     NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidNotificationDetails);
//
//     await localNotificationsPlugin.show(
//       0,
//       title,
//       body,
//       platformChannelSpecifics,
//       payload: 'Custom_Sound_Payload',
//     );
//   }
// }
import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();
  AndroidInitializationSettings androidInitializationSettings =
  const AndroidInitializationSettings("@mipmap/ic_launcher");
  static FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  DarwinInitializationSettings darwinInitializationSettings = const DarwinInitializationSettings(
      requestAlertPermission: true,
      requestSoundPermission: true,
      requestBadgePermission: true,
      defaultPresentSound: true,
      defaultPresentAlert: true,
      defaultPresentBadge: true);

  static Future<void> initializeFirebaseMessaging() async {
    NotificationSettings settings = await firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission for notifications');
    } else {
      print('User declined or has not accepted permission for notifications');
    }

    // Configure Firebase Messaging background handler
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  }
  @pragma('vm:entry-point')
  static Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    print("Handling a background message: ${message.messageId}");
    // You can handle the incoming message payload here
  }


  // static Future<void> initialize() async {
  //   const AndroidInitializationSettings initializationSettingsAndroid =
  //   AndroidInitializationSettings('app_icon');
  //   // const IOSInitializationSettings iosInitializationSettings =
  //   // IOSInitializationSettings();
  //   final InitializationSettings initializationSettings = InitializationSettings(
  //     android: initializationSettingsAndroid,
  //    // iOS: iosInitializationSettings,
  //   );
  //
  //   await _flutterLocalNotificationsPlugin.initialize(
  //     initializationSettings,
  //     onDidReceiveNotificationResponse: (response) {
  //       if (response.payload != null) {
  //          print(response.payload.toString());
  //         // Map<dynamic, dynamic> map = jsonDecode(response.payload.toString());
  //       }
  //     },
  //   );
  // }
  initializeNotification() async {
    InitializationSettings initializationSettings =
    InitializationSettings(android: androidInitializationSettings, iOS: darwinInitializationSettings);
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (response) {
        if (response.payload != null) {
         // print(response.payload.toString());
          // Map<dynamic, dynamic> map = jsonDecode(response.payload.toString());
        }
      },
    ).catchError((e) {
      throw Exception(e);
    });
  }
  static Future<void> createNotificationChannel() async {
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'channel_id_1', // Replace with your channel ID
      'Custom_channel', // Replace with your channel name
      description: 'Custom Channel Description', // Replace with your channel description
      importance: Importance.max,
      playSound: true,
      sound: RawResourceAndroidNotificationSound('ring'),
    );

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }

  // Future<void> setupInteractMessage()async{
  //
  //   RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();
  //
  //   if(initialMessage != null){
  //     print("Hello this one");
  //  //   handleMessage(context, initialMessage);
  //   }
  //
  //
  //   FirebaseMessaging.onMessageOpenedApp.listen((event) {
  //    // handleMessage(context, event);
  //   });
  //
  // }

  showNotificationWithPayLoad({
    required title,
    required body,
    required payload,
  }) {
    AndroidNotificationDetails androidNotificationDetails =  const AndroidNotificationDetails(
    "demo_100",
    "demo_app",
    channelDescription: "This is custom soudn msg",
    priority: Priority.high,
    playSound: true,
    sound: RawResourceAndroidNotificationSound('ring.wav'), // Default sound
    importance: Importance.max,

  );

    NotificationDetails notificationDetails =
    NotificationDetails(android: androidNotificationDetails,);
    flutterLocalNotificationsPlugin
        .show(
        int.parse(DateTime.now()
            .millisecondsSinceEpoch
            .toString()
            .substring(DateTime.now().millisecondsSinceEpoch.toString().length - 5)),
        title,
        body,
        notificationDetails,
        payload: payload)
        .catchError((e) {
      throw Exception(e);
    });
  }


  static Future<void> showNotification(
      int id,
      String title,
      String body,
      ) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
      'custom_channel_id', // Same channel ID as created above
      'Custom Channel', // Same channel name as created above
      channelDescription: 'Custom Channel Description', // Same channel description as created above
      importance: Importance.max,
      playSound: true,
      priority: Priority.high,
    );
    const NotificationDetails platformChannelSpecifics =
    NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      id,
      title,
      body,
      platformChannelSpecifics,
      payload: 'Custom_Sound_Payload',
    );
  }

  //
  // static Future<void> showBigTextNotification(
  //     String? title, String body,
  //     NotificationBody? notificationBody, FlutterLocalNotificationsPlugin fln) async {
  //   BigTextStyleInformation bigTextStyleInformation = BigTextStyleInformation(
  //     body, htmlFormatBigText: true,
  //     contentTitle: title, htmlFormatContentTitle: true,
  //   );
  //   AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
  //     'channel_id', 'channel_name', importance: Importance.max,
  //     styleInformation: bigTextStyleInformation, priority: Priority.max, playSound: true,
  //     sound: RawResourceAndroidNotificationSound('notification'),
  //   );
  //   NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);
  //   await fln.show(0, title, body, platformChannelSpecifics, payload: notificationBody != null ? jsonEncode(notificationBody.toJson()) : null);
  // }

}
