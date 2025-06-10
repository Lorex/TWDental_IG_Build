Alias: $TWCoreObservationSimple = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore

Profile: DentalPlaqueObservation
Parent: $TWCoreObservationSimple
Id: Observation-plaque-twdental
Title: "牙醫－牙菌斑檢查"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現牙菌斑檢查的資料。"

* . ^short = "牙菌斑檢查"
* status 1..1 MS
* status ^short = "檢查狀態"

* category 1..* MS
* category ^short = "檢查類別"
* category only CodeableConceptTW
* category from https://twcore.mohw.gov.tw/ig/twcore/ValueSet/category-code-tw

* code 1..1 MS
* code ^short = "檢查代碼"
* code only CodeableConceptTW
* code.coding.system = "https://dental-ig.fhir.tw/CodeSystem/dental-examination"
* code.coding.code = #PLAQUE
* code.coding.display = "牙菌斑檢查"

* subject 1..1 MS
* subject only Reference(DentalPatient)

* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x] ^short = "檢查時間"

* value[x] 1..1 MS
* value[x] only Quantity
* value[x] ^short = "牙菌斑指數"
* value[x].value ^short = "指數值"
* value[x].unit = "%"
* value[x].system = "http://unitsofmeasure.org"
* value[x].code = #%

* component 0..* MS
* component ^short = "牙齒檢查結果"
* component.code 1..1 MS
* component.code ^short = "牙位"
* component.code only CodeableConceptTW
* component.value[x] 1..1 MS
* component.value[x] only CodeableConcept
* component.value[x] ^short = "檢查結果"
* component.value[x] from VSPlaqueMark

* encounter 1..1 MS
* encounter only Reference(DentalEncounter)

* performer 1..* MS
* performer only Reference(DentalPractitioner or DentalOrganization)

Instance: Dental-plaque-observation-example
InstanceOf: DentalPlaqueObservation
Usage: #example
Title: "牙醫－牙菌斑檢查範例"
Description: "此範例展示如何使用 DentalPlaqueObservation Profile 來呈現牙菌斑檢查的資料。"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam "檢查"
* code.coding.system = "https://dental-ig.fhir.tw/CodeSystem/dental-examination"
* code.coding.code = #PLAQUE
* code.coding.display = "牙菌斑檢查"
* subject = Reference(Dental-patient-example)
* effectiveDateTime = "2024-01-01T09:30:00+08:00"
* valueQuantity.value = 25.5
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%
* component[0].code.coding.system = "https://dental-ig.fhir.tw/CodeSystem/tooth-number"
* component[0].code.coding.code = #11
* component[0].code.coding.display = "右上中門牙"
* component[0].valueCodeableConcept.coding.system = "https://dental-ig.fhir.tw/CodeSystem/plaque-mark"
* component[0].valueCodeableConcept.coding.code = #POSITIVE
* component[0].valueCodeableConcept.coding.display = "有牙菌斑"
* encounter = Reference(Dental-encounter-example)
* performer = Reference(Dental-practitioner-example) 