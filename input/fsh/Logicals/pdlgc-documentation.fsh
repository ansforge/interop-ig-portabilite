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
* dictionnaireDonnes 1..* Document "Document décrivant les données exportées dans un format propriétaire structuré, pour lesquelles il n'existe pas de spécification publique de référence permettant au LGC destinataire d'en déduire la structure et la sémantique."
* mappingFichiers 1..* Document "Description technique des fichiers des archives transverse et Patient, permettant au système destinataire d'en identifier le contenu, le format et les références aux spécifications applicables (volet CI-SIS ou dictionnaire de données propriétaire)."
* schemaTechnique 0..* Document "Schéma décrivant la structure des fichiers exportés dans un format propriétaire (XSD, JSON Schema ou équivalent), destiné à faciliter l'implémentation du traitement des données par le système destinataire."
* jeuEchantillon 1..* Document "Exemples anonymisés représentatifs de chaque type de fichier présent dans l'archive, destinés à illustrer la structure et le contenu attendus."
* parametreConfiguration 0..* Document "Description des paramètres de configuration du système émetteur susceptibles de conditionner l'interprétation, l'affichage ou le traitement des données exportées, permettant au système destinataire d'adapter sa propre configuration pour garantir une reprise fonctionnelle cohérente."
