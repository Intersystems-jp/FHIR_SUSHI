// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."
//* name 1..* MS
* extension contains BirthPlace named birthPlace 0..1

Extension: BirthPlace
Id: birthPlace
Title: "出身地"
Description: "生まれた場所をstring型で表現する"
* ^url = "http://isc-demo/fhir/StructureDefinition/patient-birthPlace" 
* value[x] only string 

Instance: BirthPlaceSearchParameter
InstanceOf: SearchParameter
Usage: #definition
* url = "http://isc-demo/fhir/SearchParameter/patient-birthPlace"
* version = "0.0.1"
* name = "birthPlace"
* status = #active
* description = "出身地検索のパラメータ"
* code = #birthPlace
* base = #Patient
* type = #string
* expression = "Patient.extension.where(url='http://isc-demo/fhir/StructureDefinition/patient-birthPlace').value"
* comparator = #eq

Instance: KamiExample
InstanceOf: MyPatient
Description: "Patientリソースのサンプル"
* name.family = "上中"
* extension[BirthPlace].valueString = "鹿児島"
 
