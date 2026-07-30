# PDLGC Documentation - Portabilité des Données LGC v0.1.0

## Modèle logique: PDLGC Documentation 

 
Documentation d'export permettant au LGC destinataire d'intégrer les données du LGC émetteur 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [PDLGC Archive Portabilite](StructureDefinition-pdlgcArchivePortabilite.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/pdlgcDocumentation)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-pdlgcDocumentation.csv), [Excel](../StructureDefinition-pdlgcDocumentation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgcDocumentation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcDocumentation",
  "version" : "0.1.0",
  "name" : "PDLGCDocumentation",
  "title" : "PDLGC Documentation",
  "status" : "draft",
  "date" : "2026-07-30T09:32:03+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Documentation d'export permettant au LGC destinataire d'intégrer les données du LGC émetteur",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcDocumentation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgcDocumentation",
      "path" : "pdlgcDocumentation",
      "short" : "Documentation d'export permettant au système destinataire d'intégrer les données LGC du système émetteur.",
      "definition" : "Documentation d'export permettant au système destinataire d'intégrer les données LGC du système émetteur.",
      "comment" : "Transaction ExportArchivePortabilite."
    },
    {
      "id" : "pdlgcDocumentation.documentation",
      "path" : "pdlgcDocumentation.documentation",
      "short" : "Documents permettant au système destinataire d'interpréter et d'intégrer les données (dictionnaire de données, mapping, dictionnaire de terminologies propriétaures, jeu d'échantillons).",
      "definition" : "Documents permettant au système destinataire d'interpréter et d'intégrer les données (dictionnaire de données, mapping, dictionnaire de terminologies propriétaures, jeu d'échantillons).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Document"
      }]
    }]
  }
}

```
