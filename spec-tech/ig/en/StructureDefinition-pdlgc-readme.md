# PDLGC Readme - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Readme 

 
Informations éditoriales et instructions. Le socle du README.TXt est identique pour l'archive de portabilité, l'archive de données transverse et l'archive XDM Patient 

**Usages:**

* Use this Logical Model: [PDLGC Archive Patient](StructureDefinition-pdlgc-archive-patient.md), [PDLGC Archive Portabilite](StructureDefinition-pdlgc-archive-portabilite.md) and [PDLGC Archive Transverse](StructureDefinition-pdlgc-archive-transverse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgc-readme.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgc-readme.csv), [Excel](../StructureDefinition-pdlgc-readme.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-readme",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-readme",
  "version" : "0.1.0",
  "name" : "PDLGCReadme",
  "title" : "PDLGC Readme",
  "status" : "draft",
  "date" : "2026-07-22T17:16:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Informations éditoriales et instructions. Le socle du README.TXt est identique pour l'archive de portabilité, l'archive de données transverse et l'archive XDM Patient",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-readme",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-readme",
      "path" : "pdlgc-readme",
      "short" : "PDLGC Readme",
      "definition" : "Informations éditoriales et instructions. Le socle du README.TXt est identique pour l'archive de portabilité, l'archive de données transverse et l'archive XDM Patient"
    },
    {
      "id" : "pdlgc-readme.editeurSortant",
      "path" : "pdlgc-readme.editeurSortant",
      "short" : "Editeur responsable de l'export des données LGC et application utilisée",
      "definition" : "Editeur responsable de l'export des données LGC et application utilisée",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-fournisseur-sortant"
      }]
    },
    {
      "id" : "pdlgc-readme.instructions",
      "path" : "pdlgc-readme.instructions",
      "short" : "Instructions de lecture et intégration de l'archive de Portabilité",
      "definition" : "Instructions de lecture et intégration de l'archive de Portabilité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-readme.arborescence",
      "path" : "pdlgc-readme.arborescence",
      "short" : "description de la structure de l'archive de Portabilité",
      "definition" : "description de la structure de l'archive de Portabilité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
