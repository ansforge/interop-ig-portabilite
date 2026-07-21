# PDLGC Documentation - Portabilité des Données LGC v0.1.0

## Modèle logique: PDLGC Documentation 

 
Documentation d'export permettant au fournisseur destinataire d'intégrer les données LGC du fournisseur sortant 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [PDLGC Archive Portabilite](StructureDefinition-pdlgc-archive-portabilite.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/pdlgc-documentation)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-pdlgc-documentation.csv), [Excel](../StructureDefinition-pdlgc-documentation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-documentation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-documentation",
  "version" : "0.1.0",
  "name" : "PDLGCDocumentation",
  "title" : "PDLGC Documentation",
  "status" : "draft",
  "date" : "2026-07-21T16:53:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Documentation d'export permettant au fournisseur destinataire d'intégrer les données LGC du fournisseur sortant",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-documentation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-documentation",
      "path" : "pdlgc-documentation",
      "short" : "Documentation d'export permettant au fournisseur destinataire d'intégrer les données LGC du fournisseur sortant",
      "definition" : "Documentation d'export permettant au fournisseur destinataire d'intégrer les données LGC du fournisseur sortant",
      "comment" : "Transaction ExportArchivePortabilite"
    },
    {
      "id" : "pdlgc-documentation.documents",
      "path" : "pdlgc-documentation.documents",
      "short" : "Documents permettant au fournisseur destinataire d'interpréter et d'intégrer les données (dictionnaire de données, mapping, dictionnaire de terminologies propriétaures, jeu d'échantillons)",
      "definition" : "Documents permettant au fournisseur destinataire d'interpréter et d'intégrer les données (dictionnaire de données, mapping, dictionnaire de terminologies propriétaures, jeu d'échantillons)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Document"
      }]
    }]
  }
}

```
