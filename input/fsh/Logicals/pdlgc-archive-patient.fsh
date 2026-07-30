// ===========================================================================
// Modèle logique Archive patient
// ===========================================================================


Logical: PDLGCArchivePatient
Id: pdlgcArchivePatient
Title: "PDLGC Archive Patient"
Description: "Archive stockant les données médicales liées à un patient, ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM"

* ^status = #draft
* . ^short = "Archive stockant les données médicales liées à un patient, ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM."
* . ^definition =  "Archive stockant les données médicales liées à un patient, ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM."
* . ^comment = "Transaction ExportArchivePortabilite"
* readme 1..1 pdlgcReadme "Informations éditoriales et instructions d'exploitation de l'archive."
* index 1..1 pdlgcIndex "Informations éditoriales."
* pdf 1..1 BackboneElement "Répertoire contenant une copie PDF/A-1 de tous les documents transportés dans le répertoire IHE_XDM."
  * documentPDF 1..* Document "Document PDF destiné à la consultation. Ces documents ne sont pas intégrés par le destinataire si le destinataire est une système."
* iheXdm 1..1 BackboneElement "répertoire IHE_XDM contenant le lot de soumissions des données d'un patient. Nom du répertoire fixé à IHE_XDM."
  * subset01 1..1 BackboneElement "lot de soumission contenant les données d'un patient."
    * metadata 1..1 pdlgcMetadata "métadonnées du lot de soumission, conforme au profil IHE XDM, décrivant les documents patient qu'il accompagne."
    * documentPivot 1..* Document "Données structurées du périmètres pivot, concernant les informations administratives et médicales du patient. Leur export est obligatoire."
    * documentHorsPivot 0..* Document "Données structurées hors périmètre pivot. Leur export est facultatif."