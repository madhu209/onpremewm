import 'dart:ffi';

class ResponseWareHouse {
  String context;
  String metadataEtag;
  WareHouseValue value;

  ResponseWareHouse(
      {required this.context, required this.metadataEtag, required this.value});

  factory ResponseWareHouse.fromJson(Map<String, dynamic> parsedJson) {
    return ResponseWareHouse(
        context: parsedJson['@odata.context'].toString(),
        metadataEtag: parsedJson['@odata.metadataEtag'].toString(),
        value: WareHouseValue.fromJson(parsedJson['value']));
  }
}

class WareHouseValue {
  String eWMWarehouse;

  WareHouseValue({required this.eWMWarehouse});

  factory WareHouseValue.fromJson(Map<String, dynamic> parsedJson) {
    return WareHouseValue(eWMWarehouse: parsedJson['EWMWarehouse'].toString());
  }
}
