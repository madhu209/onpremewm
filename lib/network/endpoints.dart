class Endpoints {
  static String baseUrl = 'https://pcs4h2022.plutocloud.com:8443';
  static String login =
      '/sap/opu/odata/sap/ZPCD_USER_VALIDATION_SRV/UsersSet?\$filter=(Bname eq \'RAJU\' and Password eq \'Pluto12345\')&sap-client=800';

  static String warehouseList =
      '/sap/opu/odata4/sap/api_warehouse_2/srvd_a2x/sap/warehouse/0001/Warehouse';

  static String availableStockProducts =
      "/sap/opu/odata4/sap/api_whse_availablestock/srvd_a2x/sap/warehouseavailablestock/0001/WarehouseAvailableStock";

  static String physicalStockProducts =
      "/sap/opu/odata4/sap/api_whse_physstockprod/srvd_a2x/sap/whsephysicalstockproducts/0001/WarehousePhysicalStockProducts";

  // static String availableStockStorageBin =
  //     "/sap/opu/odata4/sap/api_whse_availablestock/srvd_a2x/sap/warehouseavailablestock/0001/WarehouseAvailableStock";

  // static String physicalStockStorageBin =
  //     "/sap/opu/odata4/sap/api_whse_physstockprod/srvd_a2x/sap/whsephysicalstockproducts/0001/WarehousePhysicalStockProducts";
}


// https://pcs4h2022.plutocloud.com:8443/sap/opu/odata4/sap/api_whse_availablestock/srvd_a2x/sap/warehouseavailablestock/0001/WarehouseAvailableStock?$filter=EWMWarehouse eq '1710' and EWMStorageBin eq 'DOOR-YDI1'

// https://pcs4h2022.plutocloud.com:8443/sap/opu/odata4/sap/api_whse_physstockprod/srvd_a2x/sap/whsephysicalstockproducts/0001/WarehousePhysicalStockProducts?$filter=EWMWarehouse eq '1710' and EWMStorageBin eq 'YMX3-01-03-D'