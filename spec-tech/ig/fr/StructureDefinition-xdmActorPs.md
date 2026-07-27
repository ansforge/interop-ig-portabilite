# XDM ActorPS - Portabilité des Données LGC v0.1.0

## Modèle logique: XDM ActorPS 

 
Cet attribut représente un acteur PS. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [XDM Author](StructureDefinition-xdmAuthor.md) and [XDM DocumentEntry](StructureDefinition-xdmDocumentEntry.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/xdmActorPs)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-xdmActorPs.csv), [Excel](../StructureDefinition-xdmActorPs.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdmActorPs",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmActorPs",
  "version" : "0.1.0",
  "name" : "XDMActorPS",
  "title" : "XDM ActorPS",
  "status" : "draft",
  "date" : "2026-07-27T13:36:25+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Cet attribut représente un acteur PS.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmActorPs",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmActorXds|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdmActorPs",
      "path" : "xdmActorPs",
      "short" : "XDM ActorPS",
      "definition" : "Cet attribut représente un acteur PS."
    },
    {
      "id" : "xdmActorPs.XCN1",
      "path" : "xdmActorPs.XCN1",
      "example" : [{
        "label" : "Professionnel avec un identifiant national RPPS (préfixe 8)",
        "valueString" : "801234567890"
      },
      {
        "label" : "Professionnel avec un identifiant interne dans une structure de santé FINESS",
        "valueString" : "3750100125/1453"
      }]
    },
    {
      "id" : "xdmActorPs.XCN1.value[x]",
      "path" : "xdmActorPs.XCN1.value[x]",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/psIdNat"
      }]
    },
    {
      "id" : "xdmActorPs.XCN2",
      "path" : "xdmActorPs.XCN2",
      "short" : "Nom d'exercice du professionnel"
    },
    {
      "id" : "xdmActorPs.XCN3",
      "path" : "xdmActorPs.XCN3",
      "short" : "Prénom usuel de la personne"
    },
    {
      "id" : "xdmActorPs.XCN9.composant2",
      "path" : "xdmActorPs.XCN9.composant2",
      "patternString" : "1.2.250.1.71.4.2.1"
    },
    {
      "id" : "xdmActorPs.XCN10",
      "path" : "xdmActorPs.XCN10",
      "patternCode" : "D"
    },
    {
      "id" : "xdmActorPs.XCN13",
      "path" : "xdmActorPs.XCN13",
      "patternCode" : "IDNPS"
    }]
  }
}

```
