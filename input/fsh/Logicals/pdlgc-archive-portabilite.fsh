// ===========================================================================
// Modèle logique Archive Portabilité
// ===========================================================================


Logical: PDLGCArchivePortabilite
Id: pdlgcArchivePortabilite 
Title: "PDLGC Archive Portabilite"
Description: "L'archive de Portabilité est un conteneur structuré, regroupant l'ensemble des documents et données LGC exportées ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire. Convention de nommage : PAAAAAMMJJThhmmss.ZIP, avec PA = préfixe, AAAAMMJJThhmmss = horodatage"

* ^status = #draft
* . ^short = "L'archive de Portabilité est un conteneur structuré, regroupant l'ensemble des documents et données LGC exportées ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire."
* . ^definition =  "L'archive de Portabilité est un conteneur structuré, regroupant l'ensemble des documents et données LGC exportées ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire."
* . ^comment = "Transaction ExportArchivePortabilite"
* readme 1..1 pdlgcReadme "Informations éditoriales et instructions d'exploitation de l'archive de portabilité."
* manifest 1..1 pdlgcManifest "Vue synthétique du contenu de l'archive de portabilité, incluant rapport de volumétrie et d'intégrité."
* signature 1..1 pdlgcSignature "signature XAdES de l'archive attestant de l'imputabilité et l'intégrité des données."
* documentation 1..1 pdlgcDocumentation "répertoire de stockage de la documentation d'export permettant l'interprétation de l'archive par le système destinataire (dictionnaire de données, mapping, schémas techniques, jeu d'échantillons,...)."
* archiveTransverse 1..1 pdlgcArchiveTransverse "Archive de données transverses liées au praticien ou au cabinet (agenda, données de comptabilité, logs d'accès,...)." 
* archivePatient 1..* pdlgcArchivePatient "Archive de données médicales liées au patient respectant le nommage `PATNNNNN` ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM."

* readme ^mustSupport = true
* manifest ^mustSupport = true
* signature ^mustSupport = true
* documentation ^mustSupport = true
* archiveTransverse ^mustSupport = true
* archivePatient ^mustSupport = true