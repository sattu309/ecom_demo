// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// Future<void> sendPushNotification(
//     {required String deviceToken,
//       required String title,
//       required String body,
//       required String image,
//       required String orderID}) async {
//   const String serverKey =
//       'AAAAPjHUPfE:APA91bFOdkNkeJD5suacjY-c7RRKGnaRAQIOO-AlYlYjy9ozLolN9Mxyi_64DXrsYOouCPoDyJQsrK4YgjYfAlFP427FLO5ZmELq7zz6Wqe5wjDFlvmZMGsaCkm0sKTAz5irhm14jQ0j';
//
//   final Map<String, dynamic> notification = {
//     'body': body,
//     'title': title,
//     'sound': 'default',
//     'image': image,
//   };
//
//   final Map<String, dynamic> message = {
//     'notification': notification,
//     'priority': 'high',
//     'data': {
//       'click_action': 'FLUTTER_NOTIFICATION_CLICK',
//       'id': '1',
//       'status': 'done',
//       'order_id': orderID,
//     },
//     'to': deviceToken,
//   };
//
//   try {
//     final http.Response response = await http.post(
//       Uri.parse('https://fcm.googleapis.com/fcm/send'),
//       headers: <String, String>{
//         'Content-Type': 'application/json',
//         'Authorization': 'key=$serverKey',
//       },
//       body: jsonEncode(message),
//     );
//
//     if (response.statusCode == 200) {
//       print('Notification sent successfully');
//       print(response.body);
//     } else {
//       print('Failed to send notification. Error: ${response.reasonPhrase}');
//     }
//   } catch (e) {
//     print('Error sending notification: $e');
//   }
// }
