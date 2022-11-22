import Flutter
import UIKit
import MercadoPagoDevicesSDK

public class SwiftMercadolibreFingerprintPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    MercadoPagoDevicesSDK.shared.execute()

    let channel = FlutterMethodChannel(name: "mercadolibre_fingerprint", binaryMessenger: registrar.messenger())
    let instance = SwiftMercadolibreFingerprintPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result(MercadoPagoDevicesSDK.shared.getInfoAsJsonString())
  }
}
