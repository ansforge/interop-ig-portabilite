// ===========================================================================
// Modèle logique Archive Portabilité
// ===========================================================================


Logical: PDLGCArchivePortabilite
Id: pdlgc-archive-portabilite
Title: "PDLGC Archive Portabilite"
Description: "L'archive de Portabilité est un conteneur structuré, regroupant l'ensemble des documents et données LGC exportées ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire."

* ^status = #draft
* . ^short = "L'archive de Portabilité est un conteneur structuré, regroupant l'ensemble des documents et données LGC exportées ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire."
* . ^definition =  "L'archive de Portabilité est un conteneur structuré, regroupant l'ensemble des documents et données LGC exportées ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire."
* . ^comment = "Transaction ExportArchivePortabilite"
* INDEX 1..1 pdlgc-index "Navigation globale"
* MANIFEST 1..1 pdlgc-manifest "Rapport de volumétrie et d'intégrité"
* TRANSV 0..1 pdlgc-repo-transverse "Archive de données transverses liées au praticien ou au cabinet (agenda, données de comptabilité, logs d'accès,...)" 
* PATXXX 1..* pdlgc-repo-patient "Archive de données médicales liées au patient. Chaque patient est représenté par une archive distincte"

* INDEX ^mustSupport = true
* MANIFEST ^mustSupport = true
* TRANSV ^mustSupport = true
* PATXXX ^mustSupport = true