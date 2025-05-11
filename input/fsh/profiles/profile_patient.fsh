Alias: $TWCorePatient = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore

Profile: DentalPatient
Parent: $TWCorePatient
Id: Patient-twdental
Title: "牙醫－病人"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現牙醫病人的資料。"

* . ^short = "牙醫病人的基本資料"
* identifier 1..* MS 
* identifier ^short = "病人的身分識別碼"
* active 1..1 MS
* active ^short = "此病人的基本資料是否使用中"
* name 1..* MS
* name ^short = "病人的姓名"
* telecom 0..* MS
* telecom ^short = "病人的聯絡方式"
* gender 1..1 MS
* gender ^short = "病人的性別"
* birthDate 1..1 MS
* birthDate ^short = "病人的出生日期"
* address 0..* MS
* address ^short = "病人的地址"
* maritalStatus 0..1 MS
* maritalStatus ^short = "病人的婚姻狀態"
* photo 0..* MS
* photo ^short = "病人的影像"
* contact 0..* MS
* contact ^short = "病人的緊急聯絡人"
* contact.relationship 1..* MS
* contact.relationship ^short = "與緊急聯絡人的關係"
* contact.name 0..1 MS
* contact.name ^short = "緊急聯絡人姓名"
* contact.telecom 1..* MS
* contact.telecom ^short = "緊急聯絡人的聯絡方式"
* communication 0..* MS
* communication ^short = "病人的溝通語言"
* communication.language 1..1 MS
* communication.language ^short = "病人的溝通語言"
* managingOrganization 0..1 MS
* managingOrganization ^short = "此紀錄的保管機構"

Instance: Dental-patient-example
InstanceOf: DentalPatient
Usage: #example
Title: "牙醫－病人範例"
Description: "此範例展示如何使用 DentalPatient Profile 來呈現牙醫病人的資料。"

* identifier[medicalRecord].system = "https://dental-ig.fhir.tw/identifier/medical-record"
* identifier[medicalRecord].value = "DENT-2024-001"
* identifier[medicalRecord].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[medicalRecord].type.coding.code = #MR
* active = true
* name[official].use = #official
* name[official].text = "王小明"
* name[official].family = "王"
* name[official].given = "小明"
* name[usual].use = #usual
* name[usual].text = "王小明"
* name[usual].family = "王"
* name[usual].given = "小明"
* telecom[0].system = #phone
* telecom[0].value = "0912-345-678"
* telecom[0].use = #mobile
* gender = #male
* birthDate = "1980-01-01"
* address.text = "台北市信義區信義路五段7號"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "已婚"
* communication[0].language = urn:ietf:bcp:47#zh-TW "繁體中文"
* managingOrganization = Reference(Organization-example) 