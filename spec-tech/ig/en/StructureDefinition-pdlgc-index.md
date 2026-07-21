# PDLGC Index - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Index 

 
L'INDEX.HTM est destiné à la lecture humaine 

**Usages:**

* Use this Logical Model: [PDLGC Archive Patient](StructureDefinition-pdlgc-archive-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgc-index.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgc-index.csv), [Excel](../StructureDefinition-pdlgc-index.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-index",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-index",
  "version" : "0.1.0",
  "name" : "PDLGCIndex",
  "title" : "PDLGC Index",
  "status" : "draft",
  "date" : "2026-07-21T08:40:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "L'INDEX.HTM est destiné à la lecture humaine",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-index",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-index",
      "path" : "pdlgc-index",
      "short" : "PDLGC Index",
      "definition" : "L'INDEX.HTM est destiné à la lecture humaine"
    },
    {
      "id" : "pdlgc-index.test",
      "path" : "pdlgc-index.test",
      "short" : "test index",
      "definition" : "test index",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
