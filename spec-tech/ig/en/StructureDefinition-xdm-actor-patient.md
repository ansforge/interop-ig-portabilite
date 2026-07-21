# XDM ActorPatient - Portabilité des Données LGC v0.1.0

## Logical Model: XDM ActorPatient 

 
Cet attribut représente l'acteur Patient. 

**Usages:**

* Use this Logical Model: [XDM Author](StructureDefinition-xdm-author.md) and [XDM DocumentEntry](StructureDefinition-xdm-document-entry.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-xdm-actor-patient.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-xdm-actor-patient.csv), [Excel](../StructureDefinition-xdm-actor-patient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdm-actor-patient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-patient",
  "version" : "0.1.0",
  "name" : "XDMActorPatient",
  "title" : "XDM ActorPatient",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-patient",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-xds|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdm-actor-patient",
      "path" : "xdm-actor-patient",
      "short" : "XDM ActorPatient",
      "definition" : "Cet attribut représente l'acteur Patient."
    },
    {
      "id" : "xdm-actor-patient.XCN1",
      "path" : "xdm-actor-patient.XCN1",
      "example" : [{
        "label" : "General",
        "valueString" : "124018852493334"
      }]
    },
    {
      "id" : "xdm-actor-patient.XCN1.value[x]",
      "path" : "xdm-actor-patient.XCN1.value[x]",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/matricule-ins"
      }]
    },
    {
      "id" : "xdm-actor-patient.XCN2",
      "path" : "xdm-actor-patient.XCN2",
      "short" : "Nom du patient"
    },
    {
      "id" : "xdm-actor-patient.XCN3",
      "path" : "xdm-actor-patient.XCN3",
      "short" : "Prénom du patient"
    },
    {
      "id" : "xdm-actor-patient.XCN9.composant2",
      "path" : "xdm-actor-patient.XCN9.composant2",
      "short" : "Valeur de l'OID de l’autorité d’affectation de l’identifiant"
    },
    {
      "id" : "xdm-actor-patient.XCN10",
      "path" : "xdm-actor-patient.XCN10",
      "patternCode" : "D"
    },
    {
      "id" : "xdm-actor-patient.XCN13",
      "path" : "xdm-actor-patient.XCN13",
      "patternCode" : "NH"
    }]
  }
}

```
