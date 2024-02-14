import 'dart:async';
import 'package:flutter/services.dart';
import 'package:truecaller_sdk/src/truecaller_callback.dart';

class TruecallerSdk {
  static const MethodChannel _channel =
      const MethodChannel('truecaller_sdk');

  static Future<String?> getAccessToken(TcOAuthData tcOAuthData, String s) async {
    try {
      final String? result = await _channel.invokeMethod('getAccessToken');
      return result;
    } on PlatformException catch (e) {
      print("Failed to get access token: '${e.message}'.");
      return null;
    }
  }
}
