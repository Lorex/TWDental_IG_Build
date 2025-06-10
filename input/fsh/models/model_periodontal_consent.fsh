Logical: TWDentalPeriodontalConsentModel
Id: TWDentalPeriodontalConsent
Title: "病人基本資料暨接受牙周病統合治療確認書 (TW Periodontal Consent) 之邏輯模型"
Description: "此模型說明本 IG 如何定義病人基本資料暨接受牙周病統合治療確認書的資料結構。"

* ^version = "0.0.1"
* patientName 1..1 HumanName "姓名" "病患姓名。"
* medicalRecordNumber 1..1 Identifier "病歷號碼" "病患的病歷號碼。"

// 醫學病史
* medicalHistory 0..* CodeableConcept "醫學病史" "病患的醫學病史（可複選）。"
* medicalHistoryOther 0..1 string "其他醫學病史" "其他醫學病史說明。"

// 個人習慣
* smoking 0..1 BackboneElement "抽菸" "抽菸習慣。"
* smoking.present 1..1 boolean "是否抽菸" "是否有抽菸習慣。"
* smoking.packPerDay 0..1 integer "包/天" "每日抽菸包數。"
* smoking.years 0..1 integer "年" "抽菸年數。"
* alcohol 0..1 boolean "喝酒" "是否有喝酒習慣。"
* betelNut 0..1 BackboneElement "嚼檳榔" "嚼檳榔習慣。"
* betelNut.present 1..1 boolean "是否嚼檳榔" "是否有嚼檳榔習慣。"
* betelNut.countPerDay 0..1 integer "顆/天" "每日嚼檳榔顆數。"
* betelNut.years 0..1 integer "年" "嚼檳榔年數。"
* allergy 0..1 BackboneElement "過敏" "過敏史。"
* allergy.none 0..1 boolean "無過敏" "無過敏史。"
* allergy.drug 0..1 string "藥物過敏" "藥物過敏說明。"
* allergy.food 0..1 string "食物過敏" "食物過敏說明。"
* allergy.other 0..1 string "其他過敏" "其他過敏說明。"

// 家族病史
* familyHistory 0..* CodeableConcept "家族病史" "家族病史（可複選）。"
* familyHistoryCancerType 0..1 string "癌症種類" "家族癌症種類。"
* familyHistoryOther 0..1 string "其他家族病史" "其他家族病史說明。"

// 醫師之聲明
* doctorStatements 1..* string "醫師之聲明" "醫師聲明條款內容。"

// 病人之聲明
* patientStatements 1..* string "病人之聲明" "病人聲明條款內容。"

// 簽名欄
* dentistSignature 1..1 Signature "牙醫師簽名" "牙醫師簽名。"
* consentSignature 1..1 Signature "立同意書人簽名" "立同意書人簽名。"
* consentRelation 0..1 string "與病人之關係" "立同意書人與病人之關係。"
* consentDate 1..1 date "同意日期" "同意書簽署日期。" 