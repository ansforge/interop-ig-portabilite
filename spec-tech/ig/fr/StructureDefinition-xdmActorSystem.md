# XDM ActorSystem - Portabilité des Données LGC v0.1.0

## Modèle logique: XDM ActorSystem 

 
Cet attribut représente l'acteur System. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [XDM Author](StructureDefinition-xdmAuthor.md) and [XDM DocumentEntry](StructureDefinition-xdmDocumentEntry.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/xdmActorSystem)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [XDMActorXDS](StructureDefinition-xdmActorXds.md) 

Cette structure est dérivée de [XDMActorXDS](StructureDefinition-xdmActorXds.md) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [XDMActorXDS](StructureDefinition-xdmActorXds.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [XDMActorXDS](StructureDefinition-xdmActorXds.md) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-xdmActorSystem.csv), [Excel](../StructureDefinition-xdmActorSystem.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdmActorSystem",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmActorSystem",
  "version" : "0.1.0",
  "name" : "XDMActorSystem",
  "title" : "XDM ActorSystem",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmActorSystem",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmActorXds|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdmActorSystem",
      "path" : "xdmActorSystem",
      "short" : "XDM ActorSystem",
      "definition" : "Cet attribut représente l'acteur System."
    },
    {
      "id" : "xdmActorSystem.XCN1",
      "path" : "xdmActorSystem.XCN1",
      "example" : [{
        "label" : "système avec un identifiant interne dans une structure de santé FINESS",
        "valueString" : "3750100125/88"
      }]
    },
    {
      "id" : "xdmActorSystem.XCN1.value[x]",
      "path" : "xdmActorSystem.XCN1.value[x]",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/systIdNat"
      }]
    },
    {
      "id" : "xdmActorSystem.XCN2",
      "path" : "xdmActorSystem.XCN2",
      "short" : "Nom du système"
    },
    {
      "id" : "xdmActorSystem.XCN3",
      "path" : "xdmActorSystem.XCN3",
      "short" : "Nom du modèle pour les dispositifs ou dénomination pour les autres systèmes."
    },
    {
      "id" : "xdmActorSystem.XCN9.composant2",
      "path" : "xdmActorSystem.XCN9.composant2",
      "patternString" : "1.2.250.1.71.4.2.1"
    },
    {
      "id" : "xdmActorSystem.XCN10",
      "path" : "xdmActorSystem.XCN10",
      "patternCode" : "U"
    },
    {
      "id" : "xdmActorSystem.XCN13",
      "path" : "xdmActorSystem.XCN13",
      "patternCode" : "RI"
    }]
  }
}

```
