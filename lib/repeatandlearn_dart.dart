import 'package:parse_server_sdk/parse_server_sdk.dart';

Future<bool> initBack4app() async {
  const keyApplicationId = String.fromEnvironment('keyApplicationId');
  const keyParseClientKey = String.fromEnvironment('keyClientKey');
  const keyParseServerUrl = 'https://parseapi.back4app.com';
  await Parse().initialize(
    keyApplicationId,
    keyParseServerUrl,
    clientKey: keyParseClientKey,
    // debug: true,
  );
  ParseResponse healthCheck = (await Parse().healthCheck());
  if (healthCheck.success) {
    return true;
  } else {
    return false;
  }
}
