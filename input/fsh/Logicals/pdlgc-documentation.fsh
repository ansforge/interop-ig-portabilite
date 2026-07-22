// ===========================================================================
// Modèle logique Documentation
// ===========================================================================


Logical: PDLGCDocumentation
Id: pdlgc-documentation
Title: "PDLGC Documentation"
Description: "Documentation d'export permettant au fournisseur destinataire d'intégrer les données LGC du fournisseur sortant"

* ^status = #draft
* . ^short = "Documentation d'export permettant au fournisseur destinataire d'intégrer les données LGC du fournisseur sortant."
* . ^definition =  "Documentation d'export permettant au fournisseur destinataire d'intégrer les données LGC du fournisseur sortant."
* . ^comment = "Transaction ExportArchivePortabilite."
* documentation 1..* Document "Documents permettant au fournisseur destinataire d'interpréter et d'intégrer les données (dictionnaire de données, mapping, dictionnaire de terminologies propriétaures, jeu d'échantillons)."
