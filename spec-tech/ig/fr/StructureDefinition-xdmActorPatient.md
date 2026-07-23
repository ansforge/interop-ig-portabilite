# XDM ActorPatient - Portabilité des Données LGC v0.1.0

## Modèle logique: XDM ActorPatient 

 
Cet attribut représente l'acteur Patient. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [XDM Author](StructureDefinition-xdmAuthor.md) and [XDM DocumentEntry](StructureDefinition-xdmDocumentEntry.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/xdmActorPatient)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-xdmActorPatient.csv), [Excel](../StructureDefinition-xdmActorPatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdmActorPatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmActorPatient",
  "version" : "0.1.0",
  "name" : "XDMActorPatient",
  "title" : "XDM ActorPatient",
  "status" : "draft",
  "date" : "2026-07-23T16:03:49+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Cet attribut représente l'acteur Patient.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmActorPatient",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmActorXds|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdmActorPatient",
      "path" : "xdmActorPatient",
      "short" : "XDM ActorPatient",
      "definition" : "Cet attribut représente l'acteur Patient."
    },
    {
      "id" : "xdmActorPatient.XCN1",
      "path" : "xdmActorPatient.XCN1",
      "example" : [{
        "label" : "General",
        "valueString" : "124018852493334"
      }]
    },
    {
      "id" : "xdmActorPatient.XCN1.value[x]",
      "path" : "xdmActorPatient.XCN1.value[x]",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/patId"
      }]
    },
    {
      "id" : "xdmActorPatient.XCN2",
      "path" : "xdmActorPatient.XCN2",
      "short" : "Nom du patient"
    },
    {
      "id" : "xdmActorPatient.XCN3",
      "path" : "xdmActorPatient.XCN3",
      "short" : "Prénom du patient"
    },
    {
      "id" : "xdmActorPatient.XCN9.composant2",
      "path" : "xdmActorPatient.XCN9.composant2",
      "short" : "Valeur de l'OID de l’autorité d’affectation de l’identifiant"
    },
    {
      "id" : "xdmActorPatient.XCN10",
      "path" : "xdmActorPatient.XCN10",
      "patternCode" : "D"
    },
    {
      "id" : "xdmActorPatient.XCN13",
      "path" : "xdmActorPatient.XCN13",
      "patternCode" : "NH"
    }]
  }
}

```
