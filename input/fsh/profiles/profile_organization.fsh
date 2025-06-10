Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore

Profile: DentalOrganization
Parent: $TWCoreOrganization
Id: Organization-twdental
Title: "牙醫－機構"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Organization Resource，以呈現牙醫機構的資料。"

* . ^short = "機構的資訊"
* identifier 1..* MS
* identifier ^short = "機構唯一識別碼"
* identifier.value 1..1 MS
* identifier.value ^short = "唯一值。[應填入機構代碼]"
* active 0..1 MS
* active ^short = "此機構資料是否使用中"
* type 1..1 MS
* type ^short = "機構種類"
* name 1..1 MS
* name ^short = "機構名稱"
* alias 0..* MS
* alias ^short = "機構別名"
* telecom 0..* MS
* telecom ^short = "機構聯絡方式"
* telecom.value 0..1 MS
* telecom.value ^short = "實際的聯絡方式之細節"
* address 0..* MS
* address ^short = "機構所在地址"
* address.text 0..1 MS
* address.text ^short = "地址的文字表述"
* partOf 0..1 MS
* partOf ^short = "上層機構"
* contact 0..* MS
* contact ^short = "聯絡窗口"
* contact.purpose 0..1 MS
* contact.purpose ^short = "聯絡目的"
* contact.name 0..1 MS
* contact.name ^short = "聯絡人姓名"
* contact.telecom 0..* MS
* contact.telecom ^short = "聯絡窗口的聯絡方式"
* contact.address 0..1 MS
* contact.address ^short = "聯絡窗口的地址"

Instance: Dental-organization-example
InstanceOf: DentalOrganization
Usage: #example
Title: "牙醫－機構範例"
Description: "此範例展示如何使用 DentalOrganization Profile 來呈現機構的資料。"

* identifier[0].system = "https://dental-ig.fhir.tw/identifier/organization"
* identifier[0].value = "A123456789"
* active = true
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type.coding.code = #prov
* type.coding.display = "Healthcare Provider"
* name = "幸福牙醫中心"
* alias = "幸福牙科"
* telecom[0].system = #phone
* telecom[0].value = "02-12345678"
* telecom[0].use = #work
* address[0].text = "台北市信義區市民大道五段789號"
* contact[0].purpose.coding.system = "http://terminology.hl7.org/CodeSystem/contactentity-type"
* contact[0].purpose.coding.code = #ADMIN
* contact[0].purpose.coding.display = "行政"
* contact[0].name.text = "王主任"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "0912345678"
* contact[0].telecom[0].use = #mobile