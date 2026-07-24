Logical: PDLGCSoftwareVendor
Id: pdlgcSoftwareVendor
Title: "PDLGC SoftwareVendor"
Parent: https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique
Description: "PDLGC SoftwareVendor"

* idNatStruct 1..1
* raisonSociale 1..1
* contact 1..1 
* contact only pdlgcContactPortabilite

* idNatStruct ^mustSupport = true
* raisonSociale ^mustSupport = true
* contact ^mustSupport = true