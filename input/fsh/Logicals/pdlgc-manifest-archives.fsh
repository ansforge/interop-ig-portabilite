Logical: PDLGCManifestArchives
Id: pdlgc-manifest-archives
Title: "PDLGC Manifest Archives"
Description: "Informations relatives aux répertoires Patient et transverse exportées dans l'archive de portabilité"

* type 1..1 code "Patient | Transverse"
* type from PDLGCRepoTypeVS
* nom 1..1 string "Nom du répertoire"
* patientId 0..1 string "Identifiant du Patient s'il s'agit d'un répertoire Patient"
* periodeCouverte 0..1 Period "Période couverte par l'export dans le cas d'un export ciblé"
* metadataHash 1..1 string "Hash SHA-256 du fichier Metadata inclus dans le répertoire"
