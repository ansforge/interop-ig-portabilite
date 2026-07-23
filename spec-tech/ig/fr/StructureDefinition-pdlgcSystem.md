# PDLGC System - Portabilité des Données LGC v0.1.0

## Modèle logique: PDLGC System 

 
Informations relatives au Logiciel de Gestion de Cabinet 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [PDLGC FournisseurSortant](StructureDefinition-pdlgcFournisseurSortant.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/pdlgcSystem)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-pdlgcSystem.csv), [Excel](../StructureDefinition-pdlgcSystem.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgcSystem",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcSystem",
  "version" : "0.1.0",
  "name" : "PDLGCSystem",
  "title" : "PDLGC System",
  "status" : "draft",
  "date" : "2026-07-23T16:11:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Informations relatives au Logiciel de Gestion de Cabinet",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcSystem",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgcSystem",
      "path" : "pdlgcSystem",
      "short" : "PDLGC System",
      "definition" : "Informations relatives au Logiciel de Gestion de Cabinet"
    },
    {
      "id" : "pdlgcSystem.lgcNom",
      "path" : "pdlgcSystem.lgcNom",
      "short" : "Nom du logiciel",
      "definition" : "Nom du logiciel",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSystem.lgcVersion",
      "path" : "pdlgcSystem.lgcVersion",
      "short" : "Version du logiciel",
      "definition" : "Version du logiciel",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSystem.lgcIdentifiant",
      "path" : "pdlgcSystem.lgcIdentifiant",
      "short" : "Identifiant du système",
      "definition" : "Identifiant du système",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/systIdNat"
      }]
    }]
  }
}

```
