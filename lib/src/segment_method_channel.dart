import 'package:flutter/services.dart';
import 'package:flutter_segment/src/segment_config.dart';
import 'package:flutter_segment/src/segment_platform_interface.dart';

const MethodChannel _channel = MethodChannel('flutter_segment');

class SegmentMethodChannel extends SegmentPlatform {
  @override
  Future<void> config({
    required SegmentConfig options,
  }) {
    return _channel.invokeMethod('config', {
      'options': options.toMap(),
    });
  }

  @override
  Future<void> identify({
    String? userId,
    required Map<String, dynamic> traits,
    required Map<String, dynamic> options,
  }) {
    return _channel.invokeMethod('identify', {
      'userId': userId,
      'traits': traits,
      'options': options,
    });
  }

  @override
  Future<void> track({
    required String eventName,
    required Map<String, dynamic> properties,
    required Map<String, dynamic> options,
  }) {
    return _channel.invokeMethod('track', {
      'eventName': eventName,
      'properties': properties,
      'options': options,
    });
  }

  @override
  Future<void> screen({
    required String screenName,
    required Map<String, dynamic> properties,
    required Map<String, dynamic> options,
  }) {
    return _channel.invokeMethod('screen', {
      'screenName': screenName,
      'properties': properties,
      'options': options,
    });
  }

  @override
  Future<void> group({
    required String groupId,
    required Map<String, dynamic> traits,
    required Map<String, dynamic> options,
  }) {
    return _channel.invokeMethod('group', {
      'groupId': groupId,
      'traits': traits,
      'options': options,
    });
  }

  @override
  Future<void> alias({
    required String alias,
    required Map<String, dynamic> options,
  }) {
    return _channel.invokeMethod('alias', {
      'alias': alias,
      'options': options,
    });
  }

  @override
  Future<String?> get getAnonymousId {
    return _channel.invokeMethod('getAnonymousId');
  }

  @override
  Future<void> reset() {
    return _channel.invokeMethod('reset');
  }

  @override
  Future<void> disable() {
    return _channel.invokeMethod('disable');
  }

  @override
  Future<void> enable() {
    return _channel.invokeMethod('enable');
  }

  @override
  Future<void> flush() {
    return _channel.invokeMethod('flush');
  }

  @override
  Future<void> debug(bool enabled) async {
    return _channel.invokeMethod('debug', {
      'debug': enabled,
    });
  }

  @override
  Future<void> setContext(Map<String, dynamic> context) async {
    return _channel.invokeMethod('setContext', {
      'context': context,
    });
  }
}
