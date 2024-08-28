import 'package:onpremewm/network/networkcontroller.dart';
import 'endpoints.dart';

class LoginNetworkController {
  dynamic loginUser(Object requestBody) async {
    try {
      return await RequestController().fetchResponse(
          Endpoints.baseUrl,
          Endpoints.login,
          HTTPMethod.get,
          NetworkController().headers('', ''),
          requestBody, {});
    } catch (error) {
      throw error.toString();
    }
  }
}
