# PDLGC System - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC System 

 
Informations relatives au Logiciel de Gestion de Cabinet 

**Usages:**

* Use this Logical Model: [PDLGC Manifest](StructureDefinition-pdlgcManifest.md) and [PDLGC Readme](StructureDefinition-pdlgcReadme.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgcSystem.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgcSystem.csv), [Excel](../StructureDefinition-pdlgcSystem.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgcSystem",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcSystem",
  "version" : "0.1.0",
  "name" : "PDLGCSystem",
  "title" : "PDLGC System",
  "status" : "draft",
  "date" : "2026-07-30T09:32:03+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Informations relatives au Logiciel de Gestion de Cabinet",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcSystem",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgcSystem",
      "path" : "pdlgcSystem",
      "short" : "PDLGC System",
      "definition" : "Informations relatives au Logiciel de Gestion de Cabinet"
    },
    {
      "id" : "pdlgcSystem.lgcSoftwareVendor",
      "path" : "pdlgcSystem.lgcSoftwareVendor",
      "short" : "Editeur du logiciel responsable de la production et de l'export de l'archive de portabilité",
      "definition" : "Editeur du logiciel responsable de la production et de l'export de l'archive de portabilité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcSoftwareVendor"
      }]
    },
    {
      "id" : "pdlgcSystem.lgcSystem",
      "path" : "pdlgcSystem.lgcSystem",
      "short" : "Logiciel responsable de la production et de l'export de l'archive de portabilité",
      "definition" : "Logiciel responsable de la production et de l'export de l'archive de portabilité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmActorSystem"
      }]
    }]
  }
}

```
