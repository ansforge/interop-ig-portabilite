# XDM ActorPS - Portabilité des Données LGC v0.1.0

## Logical Model: XDM ActorPS 

 
Cet attribut représente un acteur PS. 

**Usages:**

* Use this Logical Model: [XDM Author](StructureDefinition-xdm-author.md) and [XDM DocumentEntry](StructureDefinition-xdm-document-entry.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-xdm-actor-ps.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-xdm-actor-ps.csv), [Excel](../StructureDefinition-xdm-actor-ps.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdm-actor-ps",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-ps",
  "version" : "0.1.0",
  "name" : "XDMActorPS",
  "title" : "XDM ActorPS",
  "status" : "draft",
  "date" : "2026-07-22T10:39:39+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "\nCet attribut représente un acteur PS.\n",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-ps",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-xds|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdm-actor-ps",
      "path" : "xdm-actor-ps",
      "short" : "XDM ActorPS",
      "definition" : "\nCet attribut représente un acteur PS.\n"
    },
    {
      "id" : "xdm-actor-ps.XCN1",
      "path" : "xdm-actor-ps.XCN1",
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
      "id" : "xdm-actor-ps.XCN1.value[x]",
      "path" : "xdm-actor-ps.XCN1.value[x]",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/ps-id-nat"
      }]
    },
    {
      "id" : "xdm-actor-ps.XCN2",
      "path" : "xdm-actor-ps.XCN2",
      "short" : "Nom d'exercice du professionnel"
    },
    {
      "id" : "xdm-actor-ps.XCN3",
      "path" : "xdm-actor-ps.XCN3",
      "short" : "Prénom usuel de la personne"
    },
    {
      "id" : "xdm-actor-ps.XCN9.composant2",
      "path" : "xdm-actor-ps.XCN9.composant2",
      "patternString" : "1.2.250.1.71.4.2.1"
    },
    {
      "id" : "xdm-actor-ps.XCN10",
      "path" : "xdm-actor-ps.XCN10",
      "patternCode" : "D"
    },
    {
      "id" : "xdm-actor-ps.XCN13",
      "path" : "xdm-actor-ps.XCN13",
      "patternCode" : "IDNPS"
    }]
  }
}

```
