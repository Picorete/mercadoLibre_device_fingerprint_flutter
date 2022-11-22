import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mercadolibre_fingerprint/mercadolibre_fingerprint_method_channel.dart';

void main() {
  MethodChannelMercadolibreFingerprint platform =
      MethodChannelMercadolibreFingerprint();
  const MethodChannel channel = MethodChannel('mercadolibre_fingerprint');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getDeviceInfoAsJsonString(), '42');
  });
}
