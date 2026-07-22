CodeSystem:  CS_PDLGC_ExportStatus
Id: cs-pdlgc-export-status
Title: "Statut de l'export"
Description:  "Statut de l'export"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false

* #COMPLETE "Export complet des données LGC"
* #PARTIAL "Export partiel d'une fraction des données LGC"
* #SAMPLE "Export d'un échantillon de données pour test d'intégration"

