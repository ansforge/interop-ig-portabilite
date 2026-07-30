// ===========================================================================
// Modèle logique Documentation
// ===========================================================================


Logical: PDLGCDocumentation
Id: pdlgcDocumentation
Title: "PDLGC Documentation"
Description: "Documentation d'export permettant au LGC destinataire d'intégrer les données du LGC émetteur"

* ^status = #draft
* . ^short = "Documentation d'export permettant au système destinataire d'intégrer les données LGC du système émetteur."
* . ^definition =  "Documentation d'export permettant au système destinataire d'intégrer les données LGC du système émetteur."
* . ^comment = "Transaction ExportArchivePortabilite."
* documentation 1..* Document "Documents permettant au système destinataire d'interpréter et d'intégrer les données (dictionnaire de données, mapping, dictionnaire de terminologies propriétaures, jeu d'échantillons)."
