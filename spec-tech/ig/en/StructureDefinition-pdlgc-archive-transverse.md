# PDLGC Archive Transverse - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Archive Transverse 

 
Archive stockant les données transverses associés au praticien et/ou au cabinet 

**Usages:**

* Use this Logical Model: [PDLGC Archive Portabilite](StructureDefinition-pdlgc-archive-portabilite.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgc-archive-transverse.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgc-archive-transverse.csv), [Excel](../StructureDefinition-pdlgc-archive-transverse.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-archive-transverse",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-archive-transverse",
  "version" : "0.1.0",
  "name" : "PDLGCArchiveTransverse",
  "title" : "PDLGC Archive Transverse",
  "status" : "draft",
  "date" : "2026-07-16T08:46:36+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Archive stockant les données transverses associés au praticien et/ou au cabinet",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-archive-transverse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-archive-transverse",
      "path" : "pdlgc-archive-transverse",
      "short" : "Archive stockant les données transverses associés au praticien et/ou au cabinet",
      "definition" : "Archive stockant les données transverses associés au praticien et/ou au cabinet",
      "comment" : "Transaction ExportArchivePortabilite"
    },
    {
      "id" : "pdlgc-archive-transverse.README",
      "path" : "pdlgc-archive-transverse.README",
      "short" : "Informations éditoriales et instructions d'exploitation de l'archive",
      "definition" : "Informations éditoriales et instructions d'exploitation de l'archive",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-readme"
      }]
    },
    {
      "id" : "pdlgc-archive-transverse.TRANSVERSE",
      "path" : "pdlgc-archive-transverse.TRANSVERSE",
      "short" : "répertoire contenant les données du praticien et/ ou du cabinet",
      "definition" : "répertoire contenant les données du praticien et/ ou du cabinet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-archive-transverse.TRANSVERSE.documents",
      "path" : "pdlgc-archive-transverse.TRANSVERSE.documents",
      "short" : "Documents trasnverses associés au praticien et/ou au cabinet",
      "definition" : "Documents trasnverses associés au praticien et/ou au cabinet",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Document"
      }]
    }]
  }
}

```
