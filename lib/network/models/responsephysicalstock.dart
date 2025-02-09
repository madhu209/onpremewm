import 'package:onpremewm/network/models/responseavailablestock.dart';

class ResponsePhysicalStock {
  String odataContext;
  String odataMetadataEtag;
  List<StockValue> stockValue = [];
  // String odataNextLink;

  ResponsePhysicalStock({
    required this.odataContext,
    required this.odataMetadataEtag,
    required this.stockValue,
    // required this.odataNextLink,
  });

  factory ResponsePhysicalStock.fromJson(Map<String, dynamic> json) =>
      ResponsePhysicalStock(
        odataContext: json["@odata.context"],
        odataMetadataEtag: json["@odata.metadataEtag"],
        stockValue: List<StockValue>.from(
            json["value"].map((x) => StockValue.fromJson(x))),
        // odataNextLink: json["@odata.nextLink"],
      );

  // Map<String, dynamic> toJson() => {
  //       "@odata.context": odataContext,
  //       "@odata.metadataEtag": odataMetadataEtag,
  //       "value": List<dynamic>.from(physicalStock!.map((x) => x.toJson())),
  //       "@odata.nextLink": odataNextLink,
  //     };
}

// class PhysicalStock {
//   String parentHandlingUnitUuid;
//   String stockItemUuid;
//   String ewmWarehouse;
//   String product;
//   String ewmStockType;
//   String ewmStockOwner;
//   String entitledToDisposeParty;
//   String ewmStockUsage;
//   String batch;
//   String stockDocumentCategory;
//   String stockDocumentNumber;
//   String externalStockDocumentNumber;
//   String stockItemNumber;
//   String ewmWorkInProcess;
//   String ewmStockReferenceDocCategory;
//   String ewmStockReferenceDocument;
//   String ewmStockReferenceDocumentItem;
//   String stockIdentificationNumber;
//   String whseQualityInspectionType;
//   String qualityInspectionDocument;
//   String ewmHghstLvlHandlingUnitNumber;
//   String handlingUnitNumber;
//   String ewmStorageBin;
//   int ewmStockQuantityInBaseUnit;
//   String ewmStockQuantityBaseUnit;
//   String ewmStockQtyBaseUnitIsoCode;
//   String ewmStockQtyBaseUnitSapCode;
//   String ewmStockQuantityAltvUnit;
//   String ewmStockQtyAltvUnitIsoCode;
//   String ewmStockQtyAltvUnitSapCode;
//   double ewmLoadingOrNetWeight;
//   String ewmLoadingOrNetWeightUnit;
//   String ewmLoadgOrNetWgtUntIsoCode;
//   String ewmLoadgOrNetWgtUntSapCode;
//   double ewmLoadingOrNetVolume;
//   String ewmLoadingOrNetVolumeUnit;
//   String ewmLoadgOrNetVolUntIsoCode;
//   String ewmLoadgOrNetVolUntSapCode;
//   double ewmStorageBinCapConsumptionVal;
//   String ewmGoodsReceiptDateTime;
//   String warehouseTimeZone;
//   String? shelfLifeExpirationDate;
//   String countryOfOrigin;
//   bool ewmBatchIsInRestrictedUseStock;
//   String inspectionPartialLot;
//   double ewmValuationQuantity;
//   String ewmValuationQuantityUnit;
//   String ewmValuationQtyUnitIsoCode;
//   String ewmValuationQtyUnitSapCode;
//   String ewmValuationQuantityStatus;
//   bool ewmStockIsBlockedForInventory;
//   String ewmConsolidationGroup;
//   String serialNumberRequiredLevel;
//   bool ewmStorBinIsBlockedForPutaway;
//   bool ewmStorBinIsBlockedForRemoval;
//   bool ewmStorBinIsBlockedDueToPInv;
//   String ewmStorageType;
//   String ewmStorageSection;
//   String ewmPhysStkMigrtnStsCode;

//   PhysicalStock({
//     required this.parentHandlingUnitUuid,
//     required this.stockItemUuid,
//     required this.ewmWarehouse,
//     required this.product,
//     required this.ewmStockType,
//     required this.ewmStockOwner,
//     required this.entitledToDisposeParty,
//     required this.ewmStockUsage,
//     required this.batch,
//     required this.stockDocumentCategory,
//     required this.stockDocumentNumber,
//     required this.externalStockDocumentNumber,
//     required this.stockItemNumber,
//     required this.ewmWorkInProcess,
//     required this.ewmStockReferenceDocCategory,
//     required this.ewmStockReferenceDocument,
//     required this.ewmStockReferenceDocumentItem,
//     required this.stockIdentificationNumber,
//     required this.whseQualityInspectionType,
//     required this.qualityInspectionDocument,
//     required this.ewmHghstLvlHandlingUnitNumber,
//     required this.handlingUnitNumber,
//     required this.ewmStorageBin,
//     required this.ewmStockQuantityInBaseUnit,
//     required this.ewmStockQuantityBaseUnit,
//     required this.ewmStockQtyBaseUnitIsoCode,
//     required this.ewmStockQtyBaseUnitSapCode,
//     required this.ewmStockQuantityAltvUnit,
//     required this.ewmStockQtyAltvUnitIsoCode,
//     required this.ewmStockQtyAltvUnitSapCode,
//     required this.ewmLoadingOrNetWeight,
//     required this.ewmLoadingOrNetWeightUnit,
//     required this.ewmLoadgOrNetWgtUntIsoCode,
//     required this.ewmLoadgOrNetWgtUntSapCode,
//     required this.ewmLoadingOrNetVolume,
//     required this.ewmLoadingOrNetVolumeUnit,
//     required this.ewmLoadgOrNetVolUntIsoCode,
//     required this.ewmLoadgOrNetVolUntSapCode,
//     required this.ewmStorageBinCapConsumptionVal,
//     required this.ewmGoodsReceiptDateTime,
//     required this.warehouseTimeZone,
//     required this.shelfLifeExpirationDate,
//     required this.countryOfOrigin,
//     required this.ewmBatchIsInRestrictedUseStock,
//     required this.inspectionPartialLot,
//     required this.ewmValuationQuantity,
//     required this.ewmValuationQuantityUnit,
//     required this.ewmValuationQtyUnitIsoCode,
//     required this.ewmValuationQtyUnitSapCode,
//     required this.ewmValuationQuantityStatus,
//     required this.ewmStockIsBlockedForInventory,
//     required this.ewmConsolidationGroup,
//     required this.serialNumberRequiredLevel,
//     required this.ewmStorBinIsBlockedForPutaway,
//     required this.ewmStorBinIsBlockedForRemoval,
//     required this.ewmStorBinIsBlockedDueToPInv,
//     required this.ewmStorageType,
//     required this.ewmStorageSection,
//     required this.ewmPhysStkMigrtnStsCode,
//   });

//   factory PhysicalStock.fromJson(Map<String, dynamic> json) => PhysicalStock(
//         parentHandlingUnitUuid: json["ParentHandlingUnitUUID"],
//         stockItemUuid: json["StockItemUUID"],
//         ewmWarehouse: json["EWMWarehouse"],
//         product: json["Product"],
//         ewmStockType: json["EWMStockType"],
//         ewmStockOwner: json["EWMStockOwner"],
//         entitledToDisposeParty: json["EntitledToDisposeParty"],
//         ewmStockUsage: json["EWMStockUsage"],
//         batch: json["Batch"],
//         stockDocumentCategory: json["StockDocumentCategory"],
//         stockDocumentNumber: json["StockDocumentNumber"],
//         externalStockDocumentNumber: json["ExternalStockDocumentNumber"],
//         stockItemNumber: json["StockItemNumber"],
//         ewmWorkInProcess: json["EWMWorkInProcess"],
//         ewmStockReferenceDocCategory: json["EWMStockReferenceDocCategory"],
//         ewmStockReferenceDocument: json["EWMStockReferenceDocument"],
//         ewmStockReferenceDocumentItem: json["EWMStockReferenceDocumentItem"],
//         stockIdentificationNumber: json["StockIdentificationNumber"],
//         whseQualityInspectionType: json["WhseQualityInspectionType"],
//         qualityInspectionDocument: json["QualityInspectionDocument"],
//         ewmHghstLvlHandlingUnitNumber: json["EWMHghstLvlHandlingUnitNumber"],
//         handlingUnitNumber: json["HandlingUnitNumber"],
//         ewmStorageBin: json["EWMStorageBin"],
//         ewmStockQuantityInBaseUnit: json["EWMStockQuantityInBaseUnit"],
//         ewmStockQuantityBaseUnit: json["EWMStockQuantityBaseUnit"],
//         ewmStockQtyBaseUnitIsoCode: json["EWMStockQtyBaseUnitISOCode"],
//         ewmStockQtyBaseUnitSapCode: json["EWMStockQtyBaseUnitSAPCode"],
//         ewmStockQuantityAltvUnit: json["EWMStockQuantityAltvUnit"],
//         ewmStockQtyAltvUnitIsoCode: json["EWMStockQtyAltvUnitISOCode"],
//         ewmStockQtyAltvUnitSapCode: json["EWMStockQtyAltvUnitSAPCode"],
//         ewmLoadingOrNetWeight: json["EWMLoadingOrNetWeight"]?.toDouble(),
//         ewmLoadingOrNetWeightUnit: json["EWMLoadingOrNetWeightUnit"],
//         ewmLoadgOrNetWgtUntIsoCode: json["EWMLoadgOrNetWgtUntISOCode"],
//         ewmLoadgOrNetWgtUntSapCode: json["EWMLoadgOrNetWgtUntSAPCode"],
//         ewmLoadingOrNetVolume: json["EWMLoadingOrNetVolume"]?.toDouble(),
//         ewmLoadingOrNetVolumeUnit: json["EWMLoadingOrNetVolumeUnit"],
//         ewmLoadgOrNetVolUntIsoCode: json["EWMLoadgOrNetVolUntISOCode"],
//         ewmLoadgOrNetVolUntSapCode: json["EWMLoadgOrNetVolUntSAPCode"],
//         ewmStorageBinCapConsumptionVal:
//             json["EWMStorageBinCapConsumptionVal"]?.toDouble(),
//         ewmGoodsReceiptDateTime: json["EWMGoodsReceiptDateTime"],
//         warehouseTimeZone: json["WarehouseTimeZone"],
//         shelfLifeExpirationDate: json["ShelfLifeExpirationDate"] ?? "",
//         countryOfOrigin: json["CountryOfOrigin"],
//         ewmBatchIsInRestrictedUseStock: json["EWMBatchIsInRestrictedUseStock"],
//         inspectionPartialLot: json["InspectionPartialLot"],
//         ewmValuationQuantity: json["EWMValuationQuantity"]?.toDouble(),
//         ewmValuationQuantityUnit: json["EWMValuationQuantityUnit"],
//         ewmValuationQtyUnitIsoCode: json["EWMValuationQtyUnitISOCode"],
//         ewmValuationQtyUnitSapCode: json["EWMValuationQtyUnitSAPCode"],
//         ewmValuationQuantityStatus: json["EWMValuationQuantityStatus"],
//         ewmStockIsBlockedForInventory: json["EWMStockIsBlockedForInventory"],
//         ewmConsolidationGroup: json["EWMConsolidationGroup"],
//         serialNumberRequiredLevel: json["SerialNumberRequiredLevel"],
//         ewmStorBinIsBlockedForPutaway: json["EWMStorBinIsBlockedForPutaway"],
//         ewmStorBinIsBlockedForRemoval: json["EWMStorBinIsBlockedForRemoval"],
//         ewmStorBinIsBlockedDueToPInv: json["EWMStorBinIsBlockedDueToPInv"],
//         ewmStorageType: json["EWMStorageType"],
//         ewmStorageSection: json["EWMStorageSection"],
//         ewmPhysStkMigrtnStsCode: json["EWMPhysStkMigrtnStsCode"],
//       );

//   Map<String, dynamic> toJson() => {
//         "ParentHandlingUnitUUID": parentHandlingUnitUuid,
//         "StockItemUUID": stockItemUuid,
//         "EWMWarehouse": ewmWarehouse,
//         "Product": product,
//         "EWMStockType": ewmStockType,
//         "EWMStockOwner": ewmStockOwner,
//         "EntitledToDisposeParty": entitledToDisposeParty,
//         "EWMStockUsage": ewmStockUsage,
//         "Batch": batch,
//         "StockDocumentCategory": stockDocumentCategory,
//         "StockDocumentNumber": stockDocumentNumber,
//         "ExternalStockDocumentNumber": externalStockDocumentNumber,
//         "StockItemNumber": stockItemNumber,
//         "EWMWorkInProcess": ewmWorkInProcess,
//         "EWMStockReferenceDocCategory": ewmStockReferenceDocCategory,
//         "EWMStockReferenceDocument": ewmStockReferenceDocument,
//         "EWMStockReferenceDocumentItem": ewmStockReferenceDocumentItem,
//         "StockIdentificationNumber": stockIdentificationNumber,
//         "WhseQualityInspectionType": whseQualityInspectionType,
//         "QualityInspectionDocument": qualityInspectionDocument,
//         "EWMHghstLvlHandlingUnitNumber": ewmHghstLvlHandlingUnitNumber,
//         "HandlingUnitNumber": handlingUnitNumber,
//         "EWMStorageBin": ewmStorageBin,
//         "EWMStockQuantityInBaseUnit": ewmStockQuantityInBaseUnit,
//         "EWMStockQuantityBaseUnit": ewmStockQuantityBaseUnit,
//         "EWMStockQtyBaseUnitISOCode": ewmStockQtyBaseUnitIsoCode,
//         "EWMStockQtyBaseUnitSAPCode": ewmStockQtyBaseUnitSapCode,
//         "EWMStockQuantityAltvUnit": ewmStockQuantityAltvUnit,
//         "EWMStockQtyAltvUnitISOCode": ewmStockQtyAltvUnitIsoCode,
//         "EWMStockQtyAltvUnitSAPCode": ewmStockQtyAltvUnitSapCode,
//         "EWMLoadingOrNetWeight": ewmLoadingOrNetWeight,
//         "EWMLoadingOrNetWeightUnit": ewmLoadingOrNetWeightUnit,
//         "EWMLoadgOrNetWgtUntISOCode": ewmLoadgOrNetWgtUntIsoCode,
//         "EWMLoadgOrNetWgtUntSAPCode": ewmLoadgOrNetWgtUntSapCode,
//         "EWMLoadingOrNetVolume": ewmLoadingOrNetVolume,
//         "EWMLoadingOrNetVolumeUnit": ewmLoadingOrNetVolumeUnit,
//         "EWMLoadgOrNetVolUntISOCode": ewmLoadgOrNetVolUntIsoCode,
//         "EWMLoadgOrNetVolUntSAPCode": ewmLoadgOrNetVolUntSapCode,
//         "EWMStorageBinCapConsumptionVal": ewmStorageBinCapConsumptionVal,
//         "EWMGoodsReceiptDateTime": ewmGoodsReceiptDateTime,
//         "WarehouseTimeZone": warehouseTimeZone,
//         "ShelfLifeExpirationDate": shelfLifeExpirationDate,
//         "CountryOfOrigin": countryOfOrigin,
//         "EWMBatchIsInRestrictedUseStock": ewmBatchIsInRestrictedUseStock,
//         "InspectionPartialLot": inspectionPartialLot,
//         "EWMValuationQuantity": ewmValuationQuantity,
//         "EWMValuationQuantityUnit": ewmValuationQuantityUnit,
//         "EWMValuationQtyUnitISOCode": ewmValuationQtyUnitIsoCode,
//         "EWMValuationQtyUnitSAPCode": ewmValuationQtyUnitSapCode,
//         "EWMValuationQuantityStatus": ewmValuationQuantityStatus,
//         "EWMStockIsBlockedForInventory": ewmStockIsBlockedForInventory,
//         "EWMConsolidationGroup": ewmConsolidationGroup,
//         "SerialNumberRequiredLevel": serialNumberRequiredLevel,
//         "EWMStorBinIsBlockedForPutaway": ewmStorBinIsBlockedForPutaway,
//         "EWMStorBinIsBlockedForRemoval": ewmStorBinIsBlockedForRemoval,
//         "EWMStorBinIsBlockedDueToPInv": ewmStorBinIsBlockedDueToPInv,
//         "EWMStorageType": ewmStorageType,
//         "EWMStorageSection": ewmStorageSection,
//         "EWMPhysStkMigrtnStsCode": ewmPhysStkMigrtnStsCode,
//       };
// }

class ProductsStockList {
  String storageBinName;
  List<StockValue> availableStocks;
  List<StockValue> physicalStocks;

  ProductsStockList(
      {required this.storageBinName,
      required this.availableStocks,
      required this.physicalStocks});
}
