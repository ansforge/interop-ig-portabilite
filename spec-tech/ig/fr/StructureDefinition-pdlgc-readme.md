# PDLGC Readme - Portabilité des Données LGC v0.1.0

## Modèle logique: PDLGC Readme 

 
Informations éditoriales et instructions 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [PDLGC Archive Patient](StructureDefinition-pdlgc-archive-patient.md), [PDLGC Archive Portabilite](StructureDefinition-pdlgc-archive-portabilite.md) and [PDLGC Archive Transverse](StructureDefinition-pdlgc-archive-transverse.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/pdlgc-readme)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(3 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(3 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-pdlgc-readme.csv), [Excel](../StructureDefinition-pdlgc-readme.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-readme",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-readme",
  "version" : "0.1.0",
  "name" : "PDLGCReadme",
  "title" : "PDLGC Readme",
  "status" : "draft",
  "date" : "2026-07-17T14:49:58+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Informations éditoriales et instructions",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-readme",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-readme",
      "path" : "pdlgc-readme",
      "short" : "PDLGC Readme",
      "definition" : "Informations éditoriales et instructions"
    },
    {
      "id" : "pdlgc-readme.editeurSortant",
      "path" : "pdlgc-readme.editeurSortant",
      "short" : "Editeur responsable de l'export des données LGC et application utilisée",
      "definition" : "Editeur responsable de l'export des données LGC et application utilisée",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-fournisseur-sortant"
      }]
    },
    {
      "id" : "pdlgc-readme.instructions",
      "path" : "pdlgc-readme.instructions",
      "short" : "Instructions de lecture et intégration de l'archive de Portabilité",
      "definition" : "Instructions de lecture et intégration de l'archive de Portabilité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-readme.arborescence",
      "path" : "pdlgc-readme.arborescence",
      "short" : "description de la structure de l'archive de Portabilité",
      "definition" : "description de la structure de l'archive de Portabilité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
