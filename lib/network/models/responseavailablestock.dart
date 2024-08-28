class ResponseAvailableStock {
  String odataContext;
  String odataMetadataEtag;
  List<AvailableStock> availableStock;
  String odataNextLink;

  ResponseAvailableStock({
    required this.odataContext,
    required this.odataMetadataEtag,
    required this.availableStock,
    required this.odataNextLink,
  });

  factory ResponseAvailableStock.fromJson(Map<String, dynamic> json) =>
      ResponseAvailableStock(
        odataContext: json["@odata.context"],
        odataMetadataEtag: json["@odata.metadataEtag"],
        availableStock: List<AvailableStock>.from(
            json["value"].map((x) => AvailableStock.fromJson(x))),
        odataNextLink: json["@odata.nextLink"],
      );

  Map<String, dynamic> toJson() => {
        "@odata.context": odataContext,
        "@odata.metadataEtag": odataMetadataEtag,
        "value": List<dynamic>.from(availableStock.map((x) => x.toJson())),
        "@odata.nextLink": odataNextLink,
      };
}

class AvailableStock {
  String ewmWarehouse;
  String product;
  String batch;
  String ewmStockOwner;
  String entitledToDisposeParty;
  String ewmStockType;
  String ewmStockUsage;
  String stockDocumentCategory;
  String ewmDocumentCategory;
  String wbsElementExternalId;
  String specialStockIdfgSalesOrder;
  String specialStockIdfgSalesOrderItem;
  String handlingUnitExternalId;
  String ewmStorageBin;
  String ewmResource;
  String transpUnitInternalNumber;
  String wbsElementInternalId;
  String ewmStorageType;
  int availableEwmStockQty;
  String ewmStockQuantityBaseUnit;
  String ewmStockQtyBaseUnitIsoCode;
  String stockKeepingAlternativeUoM;
  String stockKeepingAltvUnitIsoCode;
  String? goodsReceiptUtcDateTime;
  dynamic shelfLifeExpirationDate;
  bool ewmStockIsBlockedForInventory;
  bool ewmBatchIsInRestrictedUseStock;
  String parentHandlingUnitUuid;
  String stockItemUuid;

  AvailableStock({
    required this.ewmWarehouse,
    required this.product,
    required this.batch,
    required this.ewmStockOwner,
    required this.entitledToDisposeParty,
    required this.ewmStockType,
    required this.ewmStockUsage,
    required this.stockDocumentCategory,
    required this.ewmDocumentCategory,
    required this.wbsElementExternalId,
    required this.specialStockIdfgSalesOrder,
    required this.specialStockIdfgSalesOrderItem,
    required this.handlingUnitExternalId,
    required this.ewmStorageBin,
    required this.ewmResource,
    required this.transpUnitInternalNumber,
    required this.wbsElementInternalId,
    required this.ewmStorageType,
    required this.availableEwmStockQty,
    required this.ewmStockQuantityBaseUnit,
    required this.ewmStockQtyBaseUnitIsoCode,
    required this.stockKeepingAlternativeUoM,
    required this.stockKeepingAltvUnitIsoCode,
    required this.goodsReceiptUtcDateTime,
    required this.shelfLifeExpirationDate,
    required this.ewmStockIsBlockedForInventory,
    required this.ewmBatchIsInRestrictedUseStock,
    required this.parentHandlingUnitUuid,
    required this.stockItemUuid,
  });

  factory AvailableStock.fromJson(Map<String, dynamic> json) => AvailableStock(
        ewmWarehouse: json["EWMWarehouse"],
        product: json["Product"],
        batch: json["Batch"],
        ewmStockOwner: json["EWMStockOwner"],
        entitledToDisposeParty: json["EntitledToDisposeParty"],
        ewmStockType: json["EWMStockType"],
        ewmStockUsage: json["EWMStockUsage"],
        stockDocumentCategory: json["StockDocumentCategory"],
        ewmDocumentCategory: json["EWMDocumentCategory"],
        wbsElementExternalId: json["WBSElementExternalID"],
        specialStockIdfgSalesOrder: json["SpecialStockIdfgSalesOrder"],
        specialStockIdfgSalesOrderItem: json["SpecialStockIdfgSalesOrderItem"],
        handlingUnitExternalId: json["HandlingUnitExternalID"],
        ewmStorageBin: json["EWMStorageBin"],
        ewmResource: json["EWMResource"],
        transpUnitInternalNumber: json["TranspUnitInternalNumber"],
        wbsElementInternalId: json["WBSElementInternalID"],
        ewmStorageType: json["EWMStorageType"],
        availableEwmStockQty: json["AvailableEWMStockQty"],
        ewmStockQuantityBaseUnit: json["EWMStockQuantityBaseUnit"],
        ewmStockQtyBaseUnitIsoCode: json["EWMStockQtyBaseUnitISOCode"],
        stockKeepingAlternativeUoM: json["StockKeepingAlternativeUoM"],
        stockKeepingAltvUnitIsoCode: json["StockKeepingAltvUnitISOCode"],
        goodsReceiptUtcDateTime: json["GoodsReceiptUTCDateTime"],
        shelfLifeExpirationDate: json["ShelfLifeExpirationDate"],
        ewmStockIsBlockedForInventory: json["EWMStockIsBlockedForInventory"],
        ewmBatchIsInRestrictedUseStock: json["EWMBatchIsInRestrictedUseStock"],
        parentHandlingUnitUuid: json["ParentHandlingUnitUUID"],
        stockItemUuid: json["StockItemUUID"],
      );

  Map<String, dynamic> toJson() => {
        "EWMWarehouse": ewmWarehouse,
        "Product": product,
        "Batch": batch,
        "EWMStockOwner": ewmStockOwner,
        "EntitledToDisposeParty": entitledToDisposeParty,
        "EWMStockType": ewmStockType,
        "EWMStockUsage": ewmStockUsage,
        "StockDocumentCategory": stockDocumentCategory,
        "EWMDocumentCategory": ewmDocumentCategory,
        "WBSElementExternalID": wbsElementExternalId,
        "SpecialStockIdfgSalesOrder": specialStockIdfgSalesOrder,
        "SpecialStockIdfgSalesOrderItem": specialStockIdfgSalesOrderItem,
        "HandlingUnitExternalID": handlingUnitExternalId,
        "EWMStorageBin": ewmStorageBin,
        "EWMResource": ewmResource,
        "TranspUnitInternalNumber": transpUnitInternalNumber,
        "WBSElementInternalID": wbsElementInternalId,
        "EWMStorageType": ewmStorageType,
        "AvailableEWMStockQty": availableEwmStockQty,
        "EWMStockQuantityBaseUnit": ewmStockQuantityBaseUnit,
        "EWMStockQtyBaseUnitISOCode": ewmStockQtyBaseUnitIsoCode,
        "StockKeepingAlternativeUoM": stockKeepingAlternativeUoM,
        "StockKeepingAltvUnitISOCode": stockKeepingAltvUnitIsoCode,
        "GoodsReceiptUTCDateTime": goodsReceiptUtcDateTime,
        "ShelfLifeExpirationDate": shelfLifeExpirationDate,
        "EWMStockIsBlockedForInventory": ewmStockIsBlockedForInventory,
        "EWMBatchIsInRestrictedUseStock": ewmBatchIsInRestrictedUseStock,
        "ParentHandlingUnitUUID": parentHandlingUnitUuid,
        "StockItemUUID": stockItemUuid,
      };
}