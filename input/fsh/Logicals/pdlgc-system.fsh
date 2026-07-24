Logical: PDLGCSystem
Id: pdlgcSystem
Title: "PDLGC System"
Description: "Informations relatives au Logiciel de Gestion de Cabinet"


* lgcSoftwareVendor 1..1 PDLGCSoftwareVendor "éditeur du logiciel responsable de la production et de l'export de l'archive de portabilité"
* lgcSoftwareModelName 1..1 string "Dénomination commerciale du modèle de Logiciel de Gestion de Cabinet"
* lgcSystemName 1..1 string "Nom de l'instance du système responsable de la production et de l'export de l'archive de portabilité"
* lgcVersion 1..1 string "Version du logiciel"
* lgcIdentifier 1..1 SystIdNat "Identifiant National du système"
