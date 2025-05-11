Logical: TWDentalPeriodontalChartModelA
Id: TWDentalPeriodontalChartA
Title: "牙醫－牙周病檢查記錄表－版本 A (TW Dental Periodontal Chart) 之邏輯模型"
Description: "牙醫－牙周病檢查記錄表－版本 A (TW Dental Periodontal Chart) 之邏輯模型，這是術前、術後合併填寫的版本"

* ^version = "0.0.1"

// 病人基本資料
* patientInformation 1..1 BackboneElement "病人基本資料" "病人基本資料"
* patientInformation.name 1..1 HumanName "患者姓名" "患者姓名"
* patientInformation.personalIDNumber 1..1 string "身分證字號" "病人身分證字號"
* patientInformation.gender 1..1 code "性別" "病人性別 (M: 男性, F: 女性)"
* patientInformation.birthDate 1..1 date "出生日期" "病人出生日期"

// 術前資料
* preExam 1..1 BackboneElement "術前資料" "術前資料"
* preExam.date 1..1 dateTime "術前檢查日期" "術前檢查日期"
* preExam.dentistName 1..1 HumanName "術前醫師姓名" "術前檢查醫師姓名"
* preExam.teeth 0..* BackboneElement "術前每顆牙齒的檢查記錄" "術前每顆牙齒的檢查記錄"
* preExam.teeth.tooth 1..1 string "牙位" "牙位"
* preExam.teeth.mobility 0..1 code "搖動度[應填入 1、2、3、D]" "牙齒搖動度（1: 已會搖, 2: 頰舌側水平方向搖動＜1mm, 3: 頰舌側水平方向搖動≧1mm, D: 垂直方向可下壓）"
* preExam.teeth.mobility from VSToothMobility (required)
* preExam.teeth.furcation 0..* BackboneElement "根岔病變" "水平根岔病變（以mm計）"
* preExam.teeth.furcation.position 1..1 code "位置" "根岔病變位置" 
* preExam.teeth.furcation.position from VSFurcationSite (required)
* preExam.teeth.furcation.depth 1..1 decimal "深度" "根岔病變深度"
* preExam.teeth.probing 0..* BackboneElement "牙周探測深度" "牙周探測深度"
* preExam.teeth.probing.buccal 0..* BackboneElement "頰側探測深度" "頰側牙周探測深度"
* preExam.teeth.probing.buccal.position 1..1 code "位置" "頰側探測深度位置"
* preExam.teeth.probing.buccal.position from VSProbingPosition (required)
* preExam.teeth.probing.buccal.depth 1..1 decimal "深度" "頰側探測深度深度"
* preExam.teeth.probing.palatal 0..* BackboneElement "腭側探測深度" "腭側牙周探測深度"
* preExam.teeth.probing.palatal.position 1..1 code "位置" "腭側探測深度位置"
* preExam.teeth.probing.palatal.position from VSProbingPosition (required)
* preExam.teeth.probing.palatal.depth 1..1 decimal "深度" "腭側探測深度深度"
* preExam.teeth.probing.lingual 0..* BackboneElement "舌側探測深度" "舌側牙周探測深度"
* preExam.teeth.probing.lingual.position 1..1 code "位置" "舌側探測深度位置"
* preExam.teeth.probing.lingual.position from VSProbingPosition (required)
* preExam.teeth.probing.lingual.depth 1..1 decimal "深度" "舌側探測深度深度"
* preExam.teeth.note 0..1 string "備註" "檢查備註"


// 術後資料
* postExam 0..1 BackboneElement "術後資料" "術後資料"
* postExam.date 1..1 dateTime "術後檢查日期" "術後檢查日期"
* postExam.dentistName 1..1 HumanName "術後醫師姓名" "術後檢查醫師姓名"
* postExam.teeth 0..* BackboneElement "術後每顆牙齒的檢查記錄" "術後每顆牙齒的檢查記錄"
* postExam.teeth.tooth 1..1 string "牙位" "牙位"
* postExam.teeth.mobility 0..1 code "搖動度[應填入 1、2、3、D]" "牙齒搖動度（1: 已會搖, 2: 頰舌側水平方向搖動＜1mm, 3: 頰舌側水平方向搖動≧1mm, D: 垂直方向可下壓）"
* postExam.teeth.mobility from VSToothMobility (required)
* postExam.teeth.furcation 0..* BackboneElement "根岔病變" "水平根岔病變（以mm計）"
* postExam.teeth.furcation.position 1..1 code "位置" "根岔病變位置" 
* postExam.teeth.furcation.position from VSFurcationSite (required)
* postExam.teeth.furcation.depth 1..1 decimal "深度" "根岔病變深度"
* postExam.teeth.probing 0..* BackboneElement "牙周探測深度" "牙周探測深度"
* postExam.teeth.probing.buccal 0..* BackboneElement "頰側探測深度" "頰側牙周探測深度"
* postExam.teeth.probing.buccal.position 1..1 code "位置" "頰側探測深度位置"
* postExam.teeth.probing.buccal.position from VSProbingPosition (required)
* postExam.teeth.probing.buccal.depth 1..1 decimal "深度" "頰側探測深度深度"
* postExam.teeth.probing.palatal 0..* BackboneElement "腭側探測深度" "腭側牙周探測深度"
* postExam.teeth.probing.palatal.position 1..1 code "位置" "腭側探測深度位置"
* postExam.teeth.probing.palatal.position from VSProbingPosition (required)
* postExam.teeth.probing.palatal.depth 1..1 decimal "深度" "腭側探測深度深度"
* postExam.teeth.probing.lingual 0..* BackboneElement "舌側探測深度" "舌側牙周探測深度"
* postExam.teeth.probing.lingual.position 1..1 code "位置" "舌側探測深度位置"
* postExam.teeth.probing.lingual.position from VSProbingPosition (required)
* postExam.teeth.probing.lingual.depth 1..1 decimal "深度" "舌側探測深度深度"
* postExam.teeth.note 0..1 string "備註" "檢查備註"

// 統計指標
* stats 1..1 BackboneElement "統計指標" "治療統計指標"
  * preTotalTeeth 1..1 integer "治療前總牙數" "治療前總牙數"
  * preDeepPocketTeeth 1..1 integer "治療前深牙周囊袋牙數" "治療前囊袋≥5mm牙數"
  * postImprovedTeeth 0..1 integer "改善牙數" "治療後至少一個部位改善≥2mm牙數"
  * improvementRate 0..1 decimal "改善率" "改善率（%）"

Mapping: TWDentalPeriodontalChartA
Id: TWDentalPeriodontalChartA
Title: "TW Dental Periodontal Chart A Mapping"
Source: TWDentalPeriodontalChartModelA
Target: "https://dental-ig.fhir.tw"

* -> "Bundle"
* patientInformation -> "Patient"
* patientInformation.name -> "Patient.name"
* patientInformation.personalIDNumber -> "Patient.identifier"
* patientInformation.gender -> "Patient.gender"
* patientInformation.birthDate -> "Patient.birthDate"

* preExam -> "Encounter[preExam]"
* preExam.date -> "Encounter[preExam].period.start"
* preExam.dentistName -> "Encounter[preExam].participant.individual.name"
* preExam.teeth -> "Observation[preExam].hasMember"
* preExam.teeth.tooth -> "Observation[preExam].code"
* preExam.teeth.mobility -> "Observation[preExam].component[mobility].valueString"
* preExam.teeth.furcation -> "Observation[preExam].component[furcation].hasMember"
* preExam.teeth.furcation.position -> "Observation[preExam].component[furcation].code"
* preExam.teeth.furcation.depth -> "Observation[preExam].component[furcation].valueQuantity"
* preExam.teeth.probing -> "Observation[preExam].component[probing].hasMember"
* preExam.teeth.probing.buccal -> "Observation[preExam].component[probing-buccal].hasMember"
* preExam.teeth.probing.buccal.position -> "Observation[preExam].component[probing-buccal].code"
* preExam.teeth.probing.buccal.depth -> "Observation[preExam].component[probing-buccal].valueQuantity"
* preExam.teeth.probing.palatal -> "Observation[preExam].component[probing-palatal].hasMember"
* preExam.teeth.probing.palatal.position -> "Observation[preExam].component[probing-palatal].code"
* preExam.teeth.probing.palatal.depth -> "Observation[preExam].component[probing-palatal].valueQuantity"
* preExam.teeth.probing.lingual -> "Observation[preExam].component[probing-lingual].hasMember"
* preExam.teeth.probing.lingual.position -> "Observation[preExam].component[probing-lingual].code"
* preExam.teeth.probing.lingual.depth -> "Observation[preExam].component[probing-lingual].valueQuantity"
* preExam.teeth.note -> "Observation[preExam].note"

* postExam -> "Encounter[postExam]"
* postExam.date -> "Encounter[postExam].period.start"
* postExam.dentistName -> "Encounter[postExam].participant.individual.name"
* postExam.teeth -> "Observation[postExam].hasMember"
* postExam.teeth.tooth -> "Observation[postExam].code"
* postExam.teeth.mobility -> "Observation[postExam].component[mobility].valueString"
* postExam.teeth.furcation -> "Observation[postExam].component[furcation].hasMember"
* postExam.teeth.furcation.position -> "Observation[postExam].component[furcation].code"
* postExam.teeth.furcation.depth -> "Observation[postExam].component[furcation].valueQuantity"
* postExam.teeth.probing -> "Observation[postExam].component[probing].hasMember"
* postExam.teeth.probing.buccal -> "Observation[postExam].component[probing-buccal].hasMember"
* postExam.teeth.probing.buccal.position -> "Observation[postExam].component[probing-buccal].code"
* postExam.teeth.probing.buccal.depth -> "Observation[postExam].component[probing-buccal].valueQuantity"
* postExam.teeth.probing.palatal -> "Observation[postExam].component[probing-palatal].hasMember"
* postExam.teeth.probing.palatal.position -> "Observation[postExam].component[probing-palatal].code"
* postExam.teeth.probing.palatal.depth -> "Observation[postExam].component[probing-palatal].valueQuantity"
* postExam.teeth.probing.lingual -> "Observation[postExam].component[probing-lingual].hasMember"
* postExam.teeth.probing.lingual.position -> "Observation[postExam].component[probing-lingual].code"
* postExam.teeth.probing.lingual.depth -> "Observation[postExam].component[probing-lingual].valueQuantity"
* postExam.teeth.note -> "Observation[postExam].note"

* stats -> "MeasureReport.group"
* stats.preTotalTeeth -> "MeasureReport.group.population[total].count"
* stats.preDeepPocketTeeth -> "MeasureReport.group.population[deep-pocket].count"
* stats.postImprovedTeeth -> "MeasureReport.group.population[improved].count"
* stats.improvementRate -> "MeasureReport.group.population[improvement-rate].count"