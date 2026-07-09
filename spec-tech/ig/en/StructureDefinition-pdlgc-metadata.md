# PDLGC Metadata - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Metadata 

 
Le fichier METADATA.XML porte les métadonnées des documents cliniques d'un patient 

**Usages:**

* Use this Logical Model: [PDLGC Archive Patient](StructureDefinition-pdlgc-archive-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgc-metadata.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgc-metadata.csv), [Excel](../StructureDefinition-pdlgc-metadata.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-metadata",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-metadata",
  "version" : "0.1.0",
  "name" : "PDLGCMetadata",
  "title" : "PDLGC Metadata",
  "status" : "draft",
  "date" : "2026-07-09T18:19:16+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Le fichier METADATA.XML porte les métadonnées des documents cliniques d'un patient",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-metadata",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-metadata",
      "path" : "pdlgc-metadata",
      "short" : "PDLGC Metadata",
      "definition" : "Le fichier METADATA.XML porte les métadonnées des documents cliniques d'un patient"
    }]
  }
}

```
