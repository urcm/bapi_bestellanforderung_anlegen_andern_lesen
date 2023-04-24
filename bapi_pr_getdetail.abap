* bapi_pr_getdetail
* importing value(number)  type banfn
*  value(account_assignment)  type selkz default space
*  value(item_text)  type selkz default space
*  value(header_text)  type selkz default space
*  value(delivery_address)  type selkz default space
*  value(version)  type selkz default space
*  value(sc_components)  type selkz default space
*  value(serial_numbers)  type selkz default space
*  value(services)  type selkz default space
* exporting value(prheader)  type bapimereqheader
* tables return  type standard table of bapiret2 with header line optional
*  pritem  type standard table of bapimereqitem with header line optional
*  praccount  type standard table of bapimereqaccount with header line optional
*  praddrdelivery  type standard table of bapimerqaddrdelivery with header line optional
*  pritemtext  type standard table of bapimereqitemtext with header line optional
*  prheadertext  type standard table of bapimereqheadtext with header line optional
*  extensionout  type standard table of bapiparex with header line optional
*  allversions  type standard table of bapimedcm_allversions with header line optional
*  prcomponents  type standard table of bapimereqcomponent with header line optional
*  serialnumbers  type standard table of bapimereqserialno with header line optional
*  serviceoutline  type standard table of bapi_srv_outline with header line optional
*  servicelines  type standard table of bapi_srv_service_line with header line optional
*  servicelimit  type standard table of bapi_srv_limit_data with header line optional
*  servicecontractlimits  type standard table of bapi_srv_contract_limits with header line optional
*  serviceaccount  type standard table of bapi_srv_acc_data with header line optional
*  servicelongtexts  type standard table of bapi_srv_longtexts with header line optional
*
*
*Documentation
*
*Get Details for One MEREQ Object
*
*Longtext Documentation  Longtext Documentation
*
*Parameters
*
*
*importing  number   Purchase Requisition Number
*importing  account_assignment   Account Assignment Data
*importing  item_text   Item Text
*importing  header_text   Header Txt
*importing  delivery_address   Delivery address
*importing  version   Version Management
*importing  sc_components   Subcontracting Components
*importing  serial_numbers   Serial Numbers
*importing  services   External Services
*exporting  prheader   Transfer Structure for Enjoy Purchase Req. - Header
*tables  return   Return Parameter(s)
*tables  pritem   Transfer Structure for Enjoy Purchase Req. - Item Data
*tables  praccount   Transfer Structure for Enjoy Purchase Req. - Acct Assignment
*tables  praddrdelivery   PO Item: Address Structure BAPIADDR1 for Inbound Delivery
*tables  pritemtext   Transfer Structure for Enjoy Purchase Req. - Item Text
*tables  prheadertext   Change Toolbar for Enjoy Purchase Req. - Header Text
*tables  extensionout   Reference Structure for BAPI Parameters EXTENSIONIN/EXTENSIO
*tables  allversions   Version Management - All Version Data
*tables  prcomponents   BAPI Structure for Components
*tables  serialnumbers   Serial Numbers in Purchase Requisition BAPI
*tables  serviceoutline   BAPI Structure for Outline of Service Package
*tables  servicelines   BAPI Structure for Service Lines
*tables  servicelimit   BAPI Structure for Limit of Service Package
*tables  servicecontractlimits   BAPI Structure for Contract Limits
*tables  serviceaccount   BAPI Structure for Account Assignment to Services and Limits
*tables  servicelongtexts   BAPI Structure for Long Texts in Service Package


data: lv_purchase_req_num type banfn value '0010000061',
      gt_prheader         type bapimereqheader.
      
      

data:
  gt_return                type standard table of bapiret2,
  gt_pritem                type standard table of bapimereqitem,
  gt_praccount             type standard table of bapimereqaccount,
  gt_praddrdelivery        type standard table of bapimerqaddrdelivery,
  gt_pritemtext            type standard table of bapimereqitemtext,
  gt_prheadertext          type standard table of bapimereqheadtext,
  gt_extensionout          type standard table of bapiparex,
  gt_allversions           type standard table of bapimedcm_allversions,
  gt_prcomponents          type standard table of bapimereqcomponent,
  gt_serialnumbers         type standard table of bapimereqserialno,
  gt_serviceoutline        type standard table of bapi_srv_outline,
  gt_servicelines          type standard table of bapi_srv_service_line,
  gt_servicelimit          type standard table of bapi_srv_limit_data,
  gt_servicecontractlimits type standard table of bapi_srv_contract_limits,
  gt_serviceaccount        type standard table of bapi_srv_acc_data,
  gt_servicelongtexts      type standard table of bapi_srv_longtexts.
