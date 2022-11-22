import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mercadolibre_fingerprint_method_channel.dart';

abstract class MercadolibreFingerprintPlatform extends PlatformInterface {
  /// Constructs a MercadolibreFingerprintPlatform.
  MercadolibreFingerprintPlatform() : super(token: _token);

  static final Object _token = Object();

  static MercadolibreFingerprintPlatform _instance =
      MethodChannelMercadolibreFingerprint();

  /// The default instance of [MercadolibreFingerprintPlatform] to use.
  ///
  /// Defaults to [MethodChannelMercadolibreFingerprint].
  static MercadolibreFingerprintPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MercadolibreFingerprintPlatform] when
  /// they register themselves.
  static set instance(MercadolibreFingerprintPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getDeviceInfoAsJsonString() {
    throw UnimplementedError(
        'getDeviceInfoAsJsonString() has not been implemented.');
  }
}
