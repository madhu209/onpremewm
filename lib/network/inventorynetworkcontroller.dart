import 'package:onpremewm/network/networkcontroller.dart';
import 'endpoints.dart';

class InventoryNetworkController {
  dynamic getProductsAvailableStockList(
      Object requestBody, Map<String, dynamic> parameters) async {
    try {
      return await RequestController().fetchResponse(
          Endpoints.baseUrl,
          Endpoints.availableStockProducts,
          HTTPMethod.get,
          NetworkController().headers(),
          requestBody,
          parameters);
    } catch (error) {
      throw error.toString();
    }
  }

  dynamic getProductsPhysicalStockList(
      Object requestBody, Map<String, dynamic> parameters) async {
    try {
      return await RequestController().fetchResponse(
          Endpoints.baseUrl,
          Endpoints.physicalStockProducts,
          HTTPMethod.get,
          NetworkController().headers(),
          requestBody,
          parameters);
    } catch (error) {
      throw error.toString();
    }
  }
}
