class ResponseWareHouse {
  String odataContext;
  String odataMetadataEtag;
  List<Value> value;

  ResponseWareHouse({
    required this.odataContext,
    required this.odataMetadataEtag,
    required this.value,
  });

  factory ResponseWareHouse.fromJson(Map<String, dynamic> json) =>
      ResponseWareHouse(
        odataContext: json["@odata.context"],
        odataMetadataEtag: json["@odata.metadataEtag"],
        value: List<Value>.from(json["value"].map((x) => Value.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "@odata.context": odataContext,
        "@odata.metadataEtag": odataMetadataEtag,
        "value": List<dynamic>.from(value.map((x) => x.toJson())),
      };
}

class Value {
  String ewmWarehouse;

  Value({
    required this.ewmWarehouse,
  });

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        ewmWarehouse: json["EWMWarehouse"],
      );

  Map<String, dynamic> toJson() => {
        "EWMWarehouse": ewmWarehouse,
      };
}
