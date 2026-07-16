// ===========================================================================
// Modèle logique Archive patient
// ===========================================================================


Logical: PDLGCArchivePatient
Id: pdlgc-archive-patient
Title: "PDLGC Archive Patient"
Description: "Archive stockant les données médicales liées à un patient, ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM"

* ^status = #draft
* . ^short = "Archive stockant les données médicales liées à un patient, ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM."
* . ^definition =  "Archive stockant les données médicales liées à un patient, ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM."
* . ^comment = "Transaction ExportArchivePortabilite"
* README 1..1 pdlgc-readme "Informations éditoriales et instructions d'exploitation de l'archive"
* INDEX 1..1 pdlgc-index "Informations éditoriales"
* PDF 1..1 BackboneElement "Répertoire contenant une copie PDF de tous les documents transportés dans le répertoire IHE_XDM."
  * documentsPDF 1..* Document "Documents PDF destinés à la consultation. Ces documents ne sont pas intégrés par le destinataire si le destinataire est une système"
* IHEXDM 1..1 BackboneElement "répertoire IHE_XDM contenant le lot de soumissions des données d'un patient. Nom du répertoire fixé à IHE_XDM"
  * SUBSET01 1..1 BackboneElement "lot de soumission contenant les données d'un patient"
    * METADATA 1..1 pdlgc-metadata "métadonnées associées aux documents du lot de soumission"
    * documents 1..* Document "Documents de santé du patient"