# MercadoLibre Fingerprint

Plugin to get all the device's fingerprint information.

Mercado Pago has its own fraud prevention tools, and the Device Fingerprint is one of them. This is a unique identifier for the device with which the buyer makes a purchase. Device Fingerprint acts in payment processing with the aim of improving the analysis of the fraud risk in each transaction.

In order to get all the device's fingerprint information that MercadoLibre needs to tokenize cards ([https://www.mercadopago.cl/developers/es/docs/checkout-pro/how-tos/payment-approval](https://www.mercadopago.cl/developers/es/docs/vtex/integration/configure-device-fingerprint)) you can get this information for both Android and IOS.

## Usage

```dart
import 'package:mercadolibre_fingerprint/mercadolibre_fingerprint.dart';


# returns json fingerprint device information
MercadolibreFingerprint().getDeviceInfoAsJsonString();

```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
