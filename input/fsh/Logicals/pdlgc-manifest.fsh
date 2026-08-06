// ===========================================================================
// Archive de Portabilité - MANIFEST.XML
// ===========================================================================


Logical: PDLGCManifest
Id: pdlgcManifest
Title: "PDLGC Manifest"
Description: "Le fichier MANIFEST.XML porte les métadonnées globales de l'export (nombre de dossiers patients, volumétrie, éléments d'intégrité), distinctes des métadonnées XDM portées par chaque `METADATA.XML` patient"

* exportId 1..1 Identifier "Identifiant unique affecté à l'archive de portabilité"
* exportType 1..1 code "Type de l'export : UNITAIRE|CIBLE|MASSIF" 
* exportType from VS_PDLGC_ExportType (required)
* exportStartTime 0..1 dateTime "Date de début de la période couverte par l'export dans le cas d'un export ciblé"
* exportEndTime 0..1 dateTime "Date de fin de la période couverte par l'export dans le cas d'un export ciblé"
* exportStatus 1..1 code "COMPLETE|PARTIAL|SAMPLE"
* exportStatus from VS_PDLGC_ExportStatus (required)
* comments 0..1 string "commentaire associé à l'export"
* author 1..1 pdlgcAuthor "Logiciel responsable de la production et de l'export de l'archive de portabiltié"
* statistics 1..1 BackboneElement "Statistiques globales de l'archive"
  * patientArchiveCount 1..1 positiveInt "Nombre d'archives patients transportées"
  * transverseArchiveCount 1..1 positiveInt "Nombre d'archives transverse trasnportées"
* archives 1..* BackboneElement "informations relatives aux archives patients et transverses contenues dans l'archive de portabilité"
* archives ^extension[$xml-name].valueString = "Archives"
  * archive 1..* BackboneElement "informations relatives à une archive Patient ou Transverse"
  * archive ^extension[$xml-name].valueString = "Archive"
    * obeys ArchiveType-invariant
    * archiveid 1..1 Identifier "identifiant du répertoire ('PATnnnnn' ou 'TRANSV')"
    * type 1..1 code "PATIENT | TRANSVERSE"
    * type from VS_PDLGC_ArchiveType
    * patientId 0..1 XDMPatientId "Identifiant du Patient s'il s'agit d'une archive XDM Patient"
    * size 1..1 integer "Taille de l'archive zip"
    * hash 1..1 string "Hash SHA-256 de l'archive concernée"


Invariant: ArchiveType-invariant
Description: "Le patientId est obligatoire si et seulement si l'archive est de type PATIENT (absent pour une archive TRANSVERSE)"
Expression: "(type = 'PATIENT') = patientId.exists()"
Severity: #error