#import "MercadolibreFingerprintPlugin.h"
#if __has_include(<mercadolibre_fingerprint/mercadolibre_fingerprint-Swift.h>)
#import <mercadolibre_fingerprint/mercadolibre_fingerprint-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mercadolibre_fingerprint-Swift.h"
#endif

@implementation MercadolibreFingerprintPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMercadolibreFingerprintPlugin registerWithRegistrar:registrar];
}
@end
