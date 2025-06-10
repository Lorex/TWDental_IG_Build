Logical: TWDentalPeriodontalSelfPayConsentModel
Id: TWDentalPeriodontalSelfPayConsent
Title: "牙周炎病人自費同意書 (TW Periodontal Self-Pay Consent) 之邏輯模型"
Description: "此模型說明本 IG 如何定義牙周炎病人自費同意書的資料結構。"

* ^version = "0.0.1"
* patientName 1..1 HumanName "姓名" "病患姓名。"
* birthDate 1..1 date "出生日期" "病患出生日期。"
* medicalRecordNumber 1..1 Identifier "病歷號碼" "病患的病歷號碼。"
* organizationName 1..1 string "醫院(診所)名稱" "醫療機構名稱。"

* consentDescription 1..1 string "同意說明" "自費同意書說明內容。"

// 自費原因
* selfPayReasons 1..* CodeableConcept "自費原因" "自費原因（多選）。"
* selfPayOtherReason 0..1 string "其他自費原因" "其他自費原因說明。"

// 自費項目明細
* selfPayItems 1..* BackboneElement "自費項目明細" "自費項目明細列表。"
* selfPayItems.itemName 1..1 string "品項名稱" "自費品項名稱。"
* selfPayItems.unitPrice 0..1 Money "單價" "自費品項單價。"
* selfPayItems.quantity 0..1 integer "數量" "自費品項數量。"
* selfPayItems.amount 0..1 Money "自付金額" "自費品項自付金額。"

// 附註
* notes 0..* string "附註" "附註條款內容。"

// 簽名欄
* consentPersonName 1..1 HumanName "立同意書人姓名" "立同意書人姓名。"
* consentPersonId 1..1 string "身分證統一編號" "立同意書人身分證統一編號。"
* consentRelation 1..1 string "與病人之關係" "立同意書人與病人之關係。"
* contactPhone 0..1 string "聯絡電話" "聯絡電話。"
* contactMobile 0..1 string "手機" "手機號碼。"
* contactAddress 0..1 string "通訊地址" "通訊地址。"
* consentSignature 1..1 Signature "簽名" "立同意書人簽名。"
* consentDate 1..1 date "同意日期" "同意書簽署日期。" 
Instance: PeriodontalSelfPayConsent-example
InstanceOf: TWDentalPeriodontalSelfPayConsentModel
Usage: #example
* patientName.text = "王小明"
* birthDate = "1980-01-01"
* medicalRecordNumber.value = "MR-001"
* organizationName = "幸福牙醫診所"
* consentDescription = "自費項目說明"
* selfPayReasons[0].text = "材料升級"
* selfPayItems[0].itemName = "自費材料"
* selfPayItems[0].unitPrice.value = 1000
* selfPayItems[0].quantity = 1
* selfPayItems[0].amount.value = 1000
* consentPersonName.text = "王大明"
* consentPersonId = "A123456789"
* consentRelation = "父子"
* consentSignature.who = Reference(Dental-patient-example)
* consentDate = "2024-01-01"
