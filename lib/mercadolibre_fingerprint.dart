import 'mercadolibre_fingerprint_platform_interface.dart';

class MercadolibreFingerprint {
  Future<String?> getDeviceInfoAsJsonString() {
    return MercadolibreFingerprintPlatform.instance.getDeviceInfoAsJsonString();
  }
}
