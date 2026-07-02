// ===========================================================================
// Archive de Portabilité - MANIFEST.XML
// ===========================================================================


Logical: PDLGCManifest
Id: pdlgc-manifest
Title: "PDLGC Manifest"
Description: "Le fichier MANIFEST.XML porte les métadonnées globales de l'export (nombre de dossiers patients, volumétrie, éléments d'intégrité), distinctes des métadonnées XDM portées par chaque `METADATA.XML` patient"

* exportId 1..1 Identifier "Identifiant unique affecté à l'archive de portabilité"
* extractTime 1..1 dateTime "Date et heure de l'extraction"
* exportType 1..1 code "Type de l'export : UNITAIRE|CIBLE|MASSIF" 
* exportType from PDLGCExportTypeVS (required)
* exportStartTime 0..1 dateTime "Date de début de la période couverte par l'export dans le cas d'un export ciblé"
* exportEndTime 0..1 dateTime "Date de fin de la période couverte par l'export dans le cas d'un export ciblé"
* exportStatus 1..1 code "COMPLETE|PARTIAL|SAMPLE"
* exportStatus from PDLGCRepoTypeVS (required)
* comments 0..1 string "commentaire associé à l'export"
* editeurSortant 1..1 pdlgc-editeur-sortant "Editeur responsable de l'export des données LGC"
* PatientArchiveCount 1..1 positiveInt "Nombre d'archives patients transportées"
* TransverseArchiveCount 1..1 positiveInt "Nombre d'archives transverse trasnportées"
* Archive 1..* BackboneElement "informations sur les archives patients et transverses contenues dans l'archive de portabilité"
* Archive.archiveid 1..1 identifier "identifiant du répertoire ('PATnnnnn' ou 'TRANSV')"
* Archive.type 1..1 code "Patient | Transverse"
* Archive.type from PDLGCRepoTypeVS
* Archive.patientId 0..1 string "Identifiant du Patient s'il s'agit d'une archive XDM Patient"
* Archive.size 1..1 integer "Taille de l'archive zip"
* Archive.hash 1..1 string "Hash SHA-256 du répertoire"