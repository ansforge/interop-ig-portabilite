# XDM Identifiant - Portabilité des Données LGC v0.1.0

## Logical Model: XDM Identifiant 

 
Identifiant de professionnel de santé, de patient, de SNR ou de système 

**Usages:**

* Use this Logical Model: [XDM ActorXDS](StructureDefinition-xdm-actor-xds.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-xdm-identifiant.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-xdm-identifiant.csv), [Excel](../StructureDefinition-xdm-identifiant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdm-identifiant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-identifiant",
  "version" : "0.1.0",
  "name" : "XDMIdentifiant",
  "title" : "XDM Identifiant",
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
  "description" : "Identifiant de professionnel de santé, de patient, de SNR ou de système",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-identifiant",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdm-identifiant",
      "path" : "xdm-identifiant",
      "short" : "XDM Identifiant",
      "definition" : "Identifiant de professionnel de santé, de patient, de SNR ou de système"
    },
    {
      "id" : "xdm-identifiant.value[x]",
      "path" : "xdm-identifiant.value[x]",
      "short" : "Identifiant",
      "definition" : "Identifiant",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/ps-id-nat"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/matricule-ins"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/snr"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-identifiant-systeme"
      }]
    }]
  }
}

```
