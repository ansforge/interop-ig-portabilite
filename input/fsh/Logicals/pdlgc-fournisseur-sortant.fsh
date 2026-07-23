Logical: PDLGCFournisseurSortant
Id: pdlgcFournisseurSortant
Title: "PDLGC FournisseurSortant"
Parent: https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique
Description: "PDLGC Fournisseur Sortant"

* idNatStruct 1..1
* raisonSociale 1..1
* contact 1..1 
* contact only pdlgcContactPortabilite
* lgcSystem 1..1 pdlgcSystem "Informations relatives au LGC."

* idNatStruct ^mustSupport = true
* raisonSociale ^mustSupport = true
* lgcSystem ^mustSupport = true