Alias: $TWCorePractitioner = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore

Profile: DentalPractitioner
Parent: $TWCorePractitioner
Id: Practitioner-twdental
Title: "牙醫－醫事人員"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Practitioner Resource，以呈現牙醫師的資料。"

* . ^short = "牙醫師的基本資料"
* identifier 0..* MS
* identifier ^short = "牙醫師的身分識別"
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier.value ^short = "身分證字號/醫師證書字號"
* identifier.type only CodeableConceptTW

* active 0..1 MS
* active ^short = "此醫事人員的基本資料是否使用中"

* name 1..* MS
* name ^short = "牙醫師姓名"
* name.use MS
* name.text MS
* name.text ^short = "完整姓名"
* name.family MS
* name.given MS

* telecom 0..* MS
* telecom ^short = "聯絡方式"
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* telecom.value ^short = "電話號碼/電子郵件"
* telecom.use MS
* telecom.period MS

* address 0..* MS
* address ^short = "地址"
* address only AddressTW

* gender 0..1 MS
* gender ^short = "性別"

* birthDate 0..1 MS
* birthDate ^short = "出生日期"

* photo 0..* MS
* photo ^short = "人員影像"

* qualification 1..* MS
* qualification ^short = "專業資格"
* qualification.identifier 1..* MS
* qualification.identifier ^short = "專業證照編號"
* qualification.code 1..1 MS
* qualification.code ^short = "證照類型"
* qualification.code only CodeableConceptTW
* qualification.period 0..1 MS
* qualification.period ^short = "證照有效期間"
* qualification.issuer only Reference(TWCoreOrganization)

* communication 0..* MS
* communication ^short = "溝通語言"
* communication only CodeableConceptTW

Instance: Dental-practitioner-example
InstanceOf: DentalPractitioner
Usage: #example
Title: "牙醫－醫事人員範例"
Description: "此範例展示如何使用 DentalPractitioner Profile 來呈現牙醫師的資料。"

* identifier[0].system = "http://www.moi.gov.tw/id"
* identifier[0].value = "B123456789"
* identifier[0].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].type.coding.code = #NI
* identifier[0].type.coding.display = "身分證號"
* identifier[1].system = "http://mohw.gov.tw/license"
* identifier[1].value = "12345"
* identifier[1].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[1].type.coding.code = #MD
* identifier[1].type.coding.display = "醫師證書字號"

* active = true
* name[0].use = #official
* name[0].text = "李醫師"
* name[0].family = "李"
* name[0].given = "醫師"

* telecom[0].system = #phone
* telecom[0].value = "0934-567-890"
* telecom[0].use = #mobile
* telecom[0].period.start = "2020-01-01"

* gender = #female
* birthDate = "1980-01-01"

* qualification[0].identifier[0].system = "http://mohw.gov.tw/dental"
* qualification[0].identifier[0].value = "D12345"
* qualification[0].code.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0360"
* qualification[0].code.coding.code = #MD
* qualification[0].code.coding.display = "Doctor of Medicine"
* qualification[0].period.start = "2010-01-01"

* communication[0].coding.system = "urn:ietf:bcp:47"
* communication[0].coding.code = #zh-TW
* communication[0].coding.display = "繁體中文" 