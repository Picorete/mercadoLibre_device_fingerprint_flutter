import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'mercadolibre_fingerprint_platform_interface.dart';

/// An implementation of [MercadolibreFingerprintPlatform] that uses method channels.
class MethodChannelMercadolibreFingerprint
    implements MercadolibreFingerprintPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mercadolibre_fingerprint');

  @override
  Future<String?> getDeviceInfoAsJsonString() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
