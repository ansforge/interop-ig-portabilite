Logical: PDLGCFournisseurSortant
Id: pdlgc-fournisseur-sortant
Title: "PDLGC Fournisseur Sortant"
Parent: https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique
Description: "PDLGC Fournisseur Sortant"


* idNatStruct 1..1
* raisonSociale 1..1
* contact 1..1 
* contact only pdlgc-contact-portabilite

* LGCSystem 1..1 pdlgc-system "Informations relatives au LGC."

* idNatStruct ^mustSupport = true
* raisonSociale ^mustSupport = true
* LGCSystem ^mustSupport = true