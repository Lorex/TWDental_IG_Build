Logical: PlaqueControlRecordModel
Id: PlaqueControlRecordModel
Title: "牙醫－牙菌斑控制記錄表（Plaque Control Record）之邏輯模型"
Description: "牙醫－牙菌斑控制記錄表（Plaque Control Record）之邏輯模型，至少術前、術後各執行一次"

* ^version = "0.0.1"

// 病人基本資料
* patientInformation 1..1 BackboneElement "病人基本資料" "病人基本資料"
* patientInformation.name 1..1 HumanName "患者姓名" "患者姓名"
* patientInformation.personalIDNumber 1..1 string "身分證字號" "病人身分證字號"
* patientInformation.gender 1..1 code "性別" "病人性別 (M: 男性, F: 女性)"
* patientInformation.birthDate 1..1 date "出生日期" "病人出生日期"

// 檢查紀錄
* examRecords 0..* BackboneElement "檢查紀錄" "每次檢查的紀錄"
* examRecords.date 1..1 dateTime "執行日期" "檢查執行日期"
* examRecords.dentistName 1..1 HumanName "醫師姓名" "執行檢查醫師姓名"
* examRecords.teeth 0..* BackboneElement "牙齒檢查記錄" "每顆牙齒的檢查記錄"
* examRecords.teeth.tooth 1..1 string "牙位" "牙位編號"
* examRecords.teeth.buccal 0..1 BackboneElement "頰側" "頰側牙菌斑指數"
* examRecords.teeth.buccal.position 1..1 code "位置" "頰側牙菌斑指數位置"
* examRecords.teeth.buccal.score 1..1 decimal "註記" "頰側牙菌斑指數註記"
* examRecords.teeth.palatal 0..1 BackboneElement "腭側" "腭側牙菌斑指數"
* examRecords.teeth.palatal.position 1..1 code "位置" "腭側牙菌斑指數位置"
* examRecords.teeth.palatal.score 1..1 decimal "註記" "腭側牙菌斑指數註記"
* examRecords.teeth.lingual 0..1 BackboneElement "舌側" "舌側牙菌斑指數"
* examRecords.teeth.lingual.position 1..1 code "位置" "舌側牙菌斑指數位置"
* examRecords.teeth.lingual.score 1..1 decimal "註記" "舌側牙菌斑指數註記"
* examRecords.plaqueScore 1..1 decimal "牙菌斑指數" "整體牙菌斑指數百分比"

Mapping: TWDentalPlaqueControlRecord
Id: TWDentalPlaqueControlRecord
Title: "TW Dental Plaque Control Record Mapping"
Source: PlaqueControlRecordModel
Target: "https://dental-ig.fhir.tw"

* -> "Bundle"
* patientInformation -> "Patient"
* patientInformation.name -> "Patient.name"
* patientInformation.personalIDNumber -> "Patient.identifier"
* patientInformation.gender -> "Patient.gender"
* patientInformation.birthDate -> "Patient.birthDate"

* examRecords -> "Encounter"
* examRecords.date -> "Encounter.period.start"
* examRecords.dentistName -> "Encounter.participant.individual.name"
* examRecords.teeth -> "Observation.hasMember"
* examRecords.teeth.tooth -> "Observation.code"
* examRecords.teeth.buccal -> "Observation.component[buccal].valueQuantity"
* examRecords.teeth.palatal -> "Observation.component[palatal].valueQuantity"
* examRecords.teeth.lingual -> "Observation.component[lingual].valueQuantity"
* examRecords.plaqueScore -> "Observation.valueQuantity"