Logical: TWDentalMedicalRecordModel
Id: TWDentalMedicalRecord
Title: "牙醫－病歷紀錄表 (TW Dental Medical Record) 之邏輯模型"
Description: "此模型說明本 IG 如何定義病歷紀錄表的資料結構，以呈現牙醫診療的病歷資料。"

* ^version = "0.0.1"
* patientName 1..1 HumanName "姓名" "病患姓名。"
* medicalRecordNumber 1..1 Identifier "病歷號碼" "病患的病歷號碼。"
* recordDate 1..1 dateTime "日期" "病歷紀錄的日期時間。"
* nhisNumber 1..1 Identifier "健保序號" "病患的健保序號。"
* treatmentSite 1..* CodeableConcept "治療部位" "牙齒治療的部位。"
* treatment 1..* CodeableConcept "處置" "進行的治療處置。"
* medicalOrder 0..* CodeableConcept "醫令" "相關的醫令代碼。"
* doctorSignature 1..1 Signature "醫師簽章" "主治醫師的簽章。"
* note 0..1 string "備註" "其他補充說明。"

Mapping: TWDentalMedicalRecord
Id: TWDentalMedicalRecord
Title: "TW Dental IG"
Source: TWDentalMedicalRecordModel
Target: "https://dental-ig.fhir.tw"
* -> "DentalMedicalRecord"
* patientName -> "病患姓名: DentalMedicalRecord.patientName"
* medicalRecordNumber -> "病歷號碼: DentalMedicalRecord.medicalRecordNumber"
* recordDate -> "紀錄日期: DentalMedicalRecord.recordDate"
* nhisNumber -> "健保序號: DentalMedicalRecord.nhisNumber"
* treatmentSite -> "治療部位: DentalMedicalRecord.treatmentSite"
* treatment -> "處置: DentalMedicalRecord.treatment"
* medicalOrder -> "醫令: DentalMedicalRecord.medicalOrder"
* doctorSignature -> "醫師簽章: DentalMedicalRecord.doctorSignature"
* note -> "備註: DentalMedicalRecord.note" 