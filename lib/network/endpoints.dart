class Endpoints {
  static String baseUrl = 'https://pcs4h2022.plutocloud.com:8443';
  static String login =
      '/sap/opu/odata/sap/ZPCD_USER_VALIDATION_SRV/UsersSet?\$filter=(Bname eq \'RAJU\' and Password eq \'Pluto12345\')&sap-client=800';

  static String warehouseList =
      '/sap/opu/odata4/sap/api_warehouse_2/srvd_a2x/sap/warehouse/0001/Warehouse';
}
