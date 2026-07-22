// ===========================================================================
// Modèle logique Archive Transverse
// ===========================================================================


Logical: PDLGCArchiveTransverse
Id: pdlgc-archive-transverse
Title: "PDLGC Archive Transverse"
Description: "Archive stockant les données transverses associés au praticien et/ou au cabinet"

* ^status = #draft
* . ^short = "Archive stockant les données transverses associés au praticien et/ou au cabinet."
* . ^definition =  "Archive stockant les données transverses associés au praticien et/ou au cabinet."
* . ^comment = "Transaction ExportArchivePortabilite."
* readme 1..1 pdlgc-readme "Informations éditoriales et instructions d'exploitation de l'archive."
* Transverse 1..1 BackboneElement "répertoire contenant les données du praticien et/ou du cabinet."
  * documentPivot 1..* Document "Données structurées du périmètre pivot relative au praticien et/ou au cabinet. Leur export est obligatoire."
  * documentHorsPivot 0..* Document "Données structurées hors périmètre pivot. Leur export est facultatif."