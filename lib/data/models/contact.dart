class Contact {
  String companyName;
  String contactName;
  String contactAdr1;
  String contactAdr2;
  String contactAdr3;
  String contactAdr4;
  String contactAdrZip;
  String contactAdrCountry;
  String contactPhoneNum1;
  String contactPhoneNum2;
  String contactPhoneNum3;
  String contactEmailAdr1;
  String contactEmailAdr2;
  bool customer;
  bool supplier;
  bool partner;
  bool private;
  bool active;
  String customerId;
  String companyId;
  String contactKeyword;
  String status;
  String financialDescription;
  String financialReportId;
  String website;
  String requestGPDRToken;
  bool gdprLocked;
  String taxRegionId;
  String taxReference;
  String terms;
  String notes;
  bool createdByAccountant;
  String errorMessage;
  String isSandboxCustomer;
  String isDummyContact;
  String ucir;
  String createdBy;
  String updatedBy;
  String createdDate;
  String updatedDate;
  String id;
  String version;

  Contact(
      {this.companyName,
      this.contactName,
      this.contactAdr1,
      this.contactAdr2,
      this.contactAdr3,
      this.contactAdr4,
      this.contactAdrZip,
      this.contactAdrCountry,
      this.contactPhoneNum1,
      this.contactPhoneNum2,
      this.contactPhoneNum3,
      this.contactEmailAdr1,
      this.contactEmailAdr2,
      this.customer,
      this.supplier,
      this.partner,
      this.private,
      this.active,
      this.customerId,
      this.companyId,
      this.contactKeyword,
      this.status,
      this.financialDescription,
      this.financialReportId,
      this.website,
      this.requestGPDRToken,
      this.gdprLocked,
      this.taxRegionId,
      this.taxReference,
      this.terms,
      this.notes,
      this.createdByAccountant,
      this.errorMessage,
      this.isSandboxCustomer,
      this.isDummyContact,
      this.ucir,
      this.createdBy,
      this.updatedBy,
      this.createdDate,
      this.updatedDate,
      this.id,
      this.version});

  Contact.fromJson(Map<String, dynamic> json) {
    companyName = json['companyName'];
    contactName = json['contactName'];
    contactAdr1 = json['contactAdr1'];
    contactAdr2 = json['contactAdr2'];
    contactAdr3 = json['contactAdr3'];
    contactAdr4 = json['contactAdr4'];
    contactAdrZip = json['contactAdrZip'];
    contactAdrCountry = json['contactAdrCountry'];
    contactPhoneNum1 = json['contactPhoneNum1'];
    contactPhoneNum2 = json['contactPhoneNum2'];
    contactPhoneNum3 = json['contactPhoneNum3'];
    contactEmailAdr1 = json['contactEmailAdr1'];
    contactEmailAdr2 = json['contactEmailAdr2'];
    customer = json['customer'];
    supplier = json['supplier'];
    partner = json['partner'];
    private = json['private'];
    active = json['active'];
    customerId = json['customerId'];
    companyId = json['companyId'];
    contactKeyword = json['contactKeyword'];
    status = json['status'];
    financialDescription = json['financialDescription'];
    financialReportId = json['financialReportId'];
    website = json['website'];
    requestGPDRToken = json['requestGPDRToken'];
    gdprLocked = json['gdprLocked'];
    taxRegionId = json['taxRegionId'];
    taxReference = json['taxReference'];
    terms = json['terms'];
    notes = json['notes'];
    createdByAccountant = json['createdByAccountant'];
    errorMessage = json['errorMessage'];
    isSandboxCustomer = json['isSandboxCustomer'];
    isDummyContact = json['isDummyContact'];
    ucir = json['ucir'];
    createdBy = json['createdBy'];
    updatedBy = json['updatedBy'];
    createdDate = json['createdDate'];
    updatedDate = json['updatedDate'];
    id = json['id'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['companyName'] = companyName;
    data['contactName'] = contactName;
    data['contactAdr1'] = contactAdr1;
    data['contactAdr2'] = contactAdr2;
    data['contactAdr3'] = contactAdr3;
    data['contactAdr4'] = contactAdr4;
    data['contactAdrZip'] = contactAdrZip;
    data['contactAdrCountry'] = contactAdrCountry;
    data['contactPhoneNum1'] = contactPhoneNum1;
    data['contactPhoneNum2'] = contactPhoneNum2;
    data['contactPhoneNum3'] = contactPhoneNum3;
    data['contactEmailAdr1'] = contactEmailAdr1;
    data['contactEmailAdr2'] = contactEmailAdr2;
    data['customer'] = customer;
    data['supplier'] = supplier;
    data['partner'] = partner;
    data['private'] = private;
    data['active'] = active;
    data['customerId'] = customerId;
    data['companyId'] = companyId;
    data['contactKeyword'] = contactKeyword;
    data['status'] = status;
    data['financialDescription'] = financialDescription;
    data['financialReportId'] = financialReportId;
    data['website'] = website;
    data['requestGPDRToken'] = requestGPDRToken;
    data['gdprLocked'] = gdprLocked;
    data['taxRegionId'] = taxRegionId;
    data['taxReference'] = taxReference;
    data['terms'] = terms;
    data['notes'] = notes;
    data['createdByAccountant'] = createdByAccountant;
    data['errorMessage'] = errorMessage;
    data['isSandboxCustomer'] = isSandboxCustomer;
    data['isDummyContact'] = isDummyContact;
    data['ucir'] = ucir;
    data['createdBy'] = createdBy;
    data['updatedBy'] = updatedBy;
    data['createdDate'] = createdDate;
    data['updatedDate'] = updatedDate;
    data['id'] = id;
    data['version'] = version;
    return data;
  }
}
