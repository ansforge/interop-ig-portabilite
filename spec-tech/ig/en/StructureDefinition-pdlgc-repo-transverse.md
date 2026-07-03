# PDLGC Répertoire Transverse - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Répertoire Transverse 

 
Répertoire stockant les données trasnverses associés au praticient et/ou au cabinet 

**Usages:**

* Use this Logical Model: [PDLGC Archive Portabilite](StructureDefinition-pdlgc-archive-portabilite.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgc-repo-transverse.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgc-repo-transverse.csv), [Excel](../StructureDefinition-pdlgc-repo-transverse.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-repo-transverse",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-repo-transverse",
  "version" : "0.1.0",
  "name" : "PDLGCRepertoireTransverse",
  "title" : "PDLGC Répertoire Transverse",
  "status" : "draft",
  "date" : "2026-07-03T08:42:19+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Répertoire stockant les données trasnverses associés au praticient et/ou au cabinet",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-repo-transverse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-repo-transverse",
      "path" : "pdlgc-repo-transverse",
      "short" : "PDLGC Répertoire Transverse",
      "definition" : "Répertoire stockant les données trasnverses associés au praticient et/ou au cabinet"
    }]
  }
}

```
