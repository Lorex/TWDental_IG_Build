Alias: $TWCoreEncounter = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore

Profile: DentalEncounter
Parent: $TWCoreEncounter
Id: Encounter-twdental
Title: "牙醫－就醫事件"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Encounter Resource，以呈現牙醫就醫事件的資料。"

* . ^short = "牙醫就醫事件"
* identifier 1..* MS
* identifier ^short = "就醫事件識別碼"
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier.assigner only Reference(DentalOrganization)

* status 1..1 MS
* status ^short = "就醫事件狀態"

* class 1..1 MS
* class ^short = "就醫類別"

* serviceType 1..1 MS
* serviceType ^short = "服務類型"
* serviceType only CodeableConceptTW

* subject 1..1 MS
* subject only Reference(DentalPatient)

* participant 1..* MS
* participant ^short = "參與者"
* participant.type 1..1 MS
* participant.period 0..1 MS
* participant.individual 1..1 MS
* participant.individual only Reference(DentalPractitioner or DentalPractitionerRole)

* period 1..1 MS
* period ^short = "就醫期間"

* location 0..* MS
* location ^short = "就醫地點"
* location.location 1..1 MS
* location.location only Reference(TWCoreLocation)

* serviceProvider 1..1 MS
* serviceProvider only Reference(DentalOrganization)

Instance: Dental-encounter-example
InstanceOf: DentalEncounter
Usage: #example
Title: "牙醫－就醫事件範例"
Description: "此範例展示如何使用 DentalEncounter Profile 來呈現牙醫就醫事件的資料。"

* identifier[0].system = "https://dental-ig.fhir.tw/identifier/encounter"
* identifier[0].value = "ENC-2024-001"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "門診"
* serviceType.coding.system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-treatment-department-nhi-tw"
* serviceType.coding.code = #DENTAL
* serviceType.coding.display = "牙科"
* subject = Reference(Dental-patient-example)
* participant[0].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "主要執行者"
* participant[0].individual = Reference(Dental-practitioner-example)
* period.start = "2024-01-01T09:00:00+08:00"
* period.end = "2024-01-01T10:00:00+08:00"
* location[0].location = Reference(Dental-location-example)
* serviceProvider = Reference(Dental-organization-example)

Instance: Dental-location-example
InstanceOf: TWCoreLocation
Usage: #example
Title: "牙醫－診所地點範例"
Description: "此範例展示如何使用 TWCoreLocation Profile 來呈現牙醫診所地點的資料。"

* status = #active
* name = "幸福牙醫診所治療室"
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ServiceDeliveryLocationRoleType"
* type.coding.code = #TRT
* type.coding.display = "治療室"
* telecom[0].system = #phone
* telecom[0].value = "02-12345678"
* telecom[0].use = #work
* telecom[0].period.start = "2020-01-01"
* address.text = "台北市信義區市民大道五段789號"
* address.line = "市民大道五段789號"
* address.city = "台北市"
* address.district = "信義區"
* address.postalCode = "110"
* physicalType.coding.system = "http://terminology.hl7.org/CodeSystem/location-physical-type"
* physicalType.coding.code = #ro
* physicalType.coding.display = "診間"
* managingOrganization = Reference(Dental-organization-example) 