import 'package:onpremewm/network/networkcontroller.dart';
import 'endpoints.dart';

class WareHouseNetworkController {
  dynamic getWareHouseList(
      Object requestBody, Map<String, dynamic> parameters) async {
    try {
      return await RequestController().fetchResponse(
          Endpoints.baseUrl,
          Endpoints.warehouseList,
          HTTPMethod.get,
          NetworkController().headers(),
          requestBody,
          parameters);
    } catch (error) {
      throw error.toString();
    }
  }
}
