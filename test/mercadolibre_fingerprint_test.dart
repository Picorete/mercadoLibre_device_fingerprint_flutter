import 'package:flutter_test/flutter_test.dart';
import 'package:mercadolibre_fingerprint/mercadolibre_fingerprint.dart';
import 'package:mercadolibre_fingerprint/mercadolibre_fingerprint_platform_interface.dart';
import 'package:mercadolibre_fingerprint/mercadolibre_fingerprint_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMercadolibreFingerprintPlatform
    with MockPlatformInterfaceMixin
    implements MercadolibreFingerprintPlatform {
  @override
  Future<String?> getDeviceInfoAsJsonString() => Future.value("{}");
}

void main() {
  final MercadolibreFingerprintPlatform initialPlatform =
      MercadolibreFingerprintPlatform.instance;

  test('$MethodChannelMercadolibreFingerprint is the default instance', () {
    expect(
        initialPlatform, isInstanceOf<MethodChannelMercadolibreFingerprint>());
  });

  test('getPlatformVersion', () async {
    MercadolibreFingerprint mercadolibreFingerprintPlugin =
        MercadolibreFingerprint();
    MockMercadolibreFingerprintPlatform fakePlatform =
        MockMercadolibreFingerprintPlatform();
    MercadolibreFingerprintPlatform.instance = fakePlatform;

    expect(
        await mercadolibreFingerprintPlugin.getDeviceInfoAsJsonString(), '42');
  });
}
