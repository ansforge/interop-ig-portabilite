# XDM ActorSNR - Portabilité des Données LGC v0.1.0

## Modèle logique: XDM ActorSNR 

 
Cet attribut représente l'acteur SNR. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [XDM Author](StructureDefinition-xdmAuthor.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/xdmActorSnr)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-xdmActorSnr.csv), [Excel](../StructureDefinition-xdmActorSnr.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdmActorSnr",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmActorSnr",
  "version" : "0.1.0",
  "name" : "XDMActorSNR",
  "title" : "XDM ActorSNR",
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
  "description" : "Cet attribut représente l'acteur SNR.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmActorSnr",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmActorXds|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdmActorSnr",
      "path" : "xdmActorSnr",
      "short" : "XDM ActorSNR",
      "definition" : "Cet attribut représente l'acteur SNR."
    },
    {
      "id" : "xdmActorSnr.XCN1",
      "path" : "xdmActorSnr.XCN1",
      "example" : [{
        "label" : "General",
        "valueString" : "9.8.7.6.5.4.3.2.1"
      }]
    },
    {
      "id" : "xdmActorSnr.XCN1.value[x]",
      "path" : "xdmActorSnr.XCN1.value[x]",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/snr"
      }]
    },
    {
      "id" : "xdmActorSnr.XCN2",
      "path" : "xdmActorSnr.XCN2",
      "short" : "Nom du système"
    },
    {
      "id" : "xdmActorSnr.XCN3",
      "path" : "xdmActorSnr.XCN3",
      "short" : "Nom du modèle pour les dispositifs ou dénomination pour les autres systèmes."
    },
    {
      "id" : "xdmActorSnr.XCN9.composant2",
      "path" : "xdmActorSnr.XCN9.composant2",
      "short" : "OID de l'éditeur",
      "example" : [{
        "label" : "General",
        "valueString" : "9.8.7.6.5.4.3.2.1."
      }]
    },
    {
      "id" : "xdmActorSnr.XCN10",
      "path" : "xdmActorSnr.XCN10",
      "patternCode" : "U"
    },
    {
      "id" : "xdmActorSnr.XCN13",
      "path" : "xdmActorSnr.XCN13",
      "patternCode" : "RI"
    }]
  }
}

```
