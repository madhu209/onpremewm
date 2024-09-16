class ResponseAvailableStock {
  String odataContext;
  String odataMetadataEtag;
  List<StockValue> availableStock = [];
  // String odataNextLink;

  ResponseAvailableStock({
    required this.odataContext,
    required this.odataMetadataEtag,
    required this.availableStock,
    // required this.odataNextLink,
  });

  factory ResponseAvailableStock.fromJson(Map<String, dynamic> json) =>
      ResponseAvailableStock(
        odataContext: json["@odata.context"],
        odataMetadataEtag: json["@odata.metadataEtag"],
        availableStock: List<StockValue>.from(
            json["value"].map((x) => StockValue.fromJson(x))),
        // odataNextLink: json["@odata.nextLink"],
      );
}

class StockValue {
  String ewmWarehouse;
  String product;
  String batch;
  String ewmStockType;
  String? handlingUnit;
  String ewmStorageBin;
  String ewmStorageType;
  String ewmStockQuantityBaseUnit;
  String? goodsReceiptUtcDateTime;
  String? shelfLifeExpirationDate;
  int? quantity;

  double? ewmLoadingOrNetWeight;
  String? ewmLoadingOrNetWeightUnit;

  StockValue({
    required this.ewmWarehouse,
    required this.product,
    required this.batch,
    required this.ewmStockType,
    required this.handlingUnit,
    required this.ewmStorageBin,
    required this.ewmStorageType,
    required this.ewmStockQuantityBaseUnit,
    this.goodsReceiptUtcDateTime,
    this.shelfLifeExpirationDate,
    this.quantity,
    required this.ewmLoadingOrNetWeight,
    required this.ewmLoadingOrNetWeightUnit,
  });

  factory StockValue.fromJson(Map<String, dynamic> json) => StockValue(
        ewmWarehouse: json["EWMWarehouse"],
        product: json["Product"],
        batch: json["Batch"],
        ewmStockType: json["EWMStockType"],
        handlingUnit:
            json["HandlingUnitExternalID"] ?? json["HandlingUnitNumber"] ?? "",
        ewmStorageBin: json["EWMStorageBin"],
        ewmStorageType: json["EWMStorageType"],
        ewmStockQuantityBaseUnit: json["EWMStockQuantityBaseUnit"],
        goodsReceiptUtcDateTime: json["GoodsReceiptUTCDateTime"] ?? "",
        shelfLifeExpirationDate: json["ShelfLifeExpirationDate"] ?? "",
        quantity: json["AvailableEWMStockQty"] ??
            json["EWMStockQuantityInBaseUnit"] ??
            0,
        ewmLoadingOrNetWeight: json["EWMLoadingOrNetWeight"]?.toDouble(),
        ewmLoadingOrNetWeightUnit: json["ewmLoadingOrNetWeightUnit"],
      );
}
