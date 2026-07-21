# XDM ActorSystem - Portabilité des Données LGC v0.1.0

## Modèle logique: XDM ActorSystem 

 
Cet attribut représente l'acteur System. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [XDM Author](StructureDefinition-xdm-author.md) and [XDM DocumentEntry](StructureDefinition-xdm-document-entry.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/xdm-actor-system)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [XDMActorXDS](StructureDefinition-xdm-actor-xds.md) 

Cette structure est dérivée de [XDMActorXDS](StructureDefinition-xdm-actor-xds.md) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [XDMActorXDS](StructureDefinition-xdm-actor-xds.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [XDMActorXDS](StructureDefinition-xdm-actor-xds.md) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-xdm-actor-system.csv), [Excel](../StructureDefinition-xdm-actor-system.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdm-actor-system",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-system",
  "version" : "0.1.0",
  "name" : "XDMActorSystem",
  "title" : "XDM ActorSystem",
  "status" : "draft",
  "date" : "2026-07-21T16:28:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Cet attribut représente l'acteur System.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ActorXDSCDA",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "ActorXDSCDA",
    "comment" : "Mapping CDA"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-system",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-xds|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdm-actor-system",
      "path" : "xdm-actor-system",
      "short" : "XDM ActorSystem",
      "definition" : "Cet attribut représente l'acteur System."
    },
    {
      "id" : "xdm-actor-system.XCN1",
      "path" : "xdm-actor-system.XCN1",
      "example" : [{
        "label" : "système avec un identifiant interne dans une structure de santé FINESS",
        "valueString" : "3750100125/88"
      }]
    },
    {
      "id" : "xdm-actor-system.XCN1.value[x]",
      "path" : "xdm-actor-system.XCN1.value[x]",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-identifiant-systeme"
      }]
    },
    {
      "id" : "xdm-actor-system.XCN2",
      "path" : "xdm-actor-system.XCN2",
      "short" : "Nom du système"
    },
    {
      "id" : "xdm-actor-system.XCN3",
      "path" : "xdm-actor-system.XCN3",
      "short" : "Nom du modèle pour les dispositifs ou dénomination pour les autres systèmes."
    },
    {
      "id" : "xdm-actor-system.XCN9.composant2",
      "path" : "xdm-actor-system.XCN9.composant2",
      "patternString" : "1.2.250.1.71.4.2.1"
    },
    {
      "id" : "xdm-actor-system.XCN10",
      "path" : "xdm-actor-system.XCN10",
      "patternCode" : "U"
    },
    {
      "id" : "xdm-actor-system.XCN13",
      "path" : "xdm-actor-system.XCN13",
      "patternCode" : "RI"
    }]
  }
}

```
