# XDM Identifiant - Portabilité des Données LGC v0.1.0

## Logical Model: XDM Identifiant 

 
Identifiant de professionnel de santé, de patient, de SNR ou de système 

**Usages:**

* Use this Logical Model: [XDM ActorXDS](StructureDefinition-xdmActorXds.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-xdmIdentifiant.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-xdmIdentifiant.csv), [Excel](../StructureDefinition-xdmIdentifiant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdmIdentifiant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmIdentifiant",
  "version" : "0.1.0",
  "name" : "XDMIdentifiant",
  "title" : "XDM Identifiant",
  "status" : "draft",
  "date" : "2026-07-23T14:32:10+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmIdentifiant",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdmIdentifiant",
      "path" : "xdmIdentifiant",
      "short" : "XDM Identifiant",
      "definition" : "Identifiant de professionnel de santé, de patient, de SNR ou de système"
    },
    {
      "id" : "xdmIdentifiant.value[x]",
      "path" : "xdmIdentifiant.value[x]",
      "short" : "Identifiant",
      "definition" : "Identifiant",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/psIdNat"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/matriculeIns"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/snr"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/systIdNat"
      }]
    }]
  }
}

```
