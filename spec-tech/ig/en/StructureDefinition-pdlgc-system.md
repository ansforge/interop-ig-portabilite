# PDLGC System - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC System 

 
Informations relatives au Logiciel de Gestion de Cabinet 

**Usages:**

* Use this Logical Model: [PDLGC FournisseurSortant](StructureDefinition-pdlgc-fournisseur-sortant.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgc-system.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgc-system.csv), [Excel](../StructureDefinition-pdlgc-system.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-system",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-system",
  "version" : "0.1.0",
  "name" : "PDLGCSystem",
  "title" : "PDLGC System",
  "status" : "draft",
  "date" : "2026-07-23T08:53:51+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-system",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-system",
      "path" : "pdlgc-system",
      "short" : "PDLGC System",
      "definition" : "Informations relatives au Logiciel de Gestion de Cabinet"
    },
    {
      "id" : "pdlgc-system.lgcNom",
      "path" : "pdlgc-system.lgcNom",
      "short" : "Nom du logiciel",
      "definition" : "Nom du logiciel",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-system.lgcVersion",
      "path" : "pdlgc-system.lgcVersion",
      "short" : "Version du logiciel",
      "definition" : "Version du logiciel",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-system.lgcIdentifiant",
      "path" : "pdlgc-system.lgcIdentifiant",
      "short" : "Identifiant du logiciel",
      "definition" : "Identifiant du logiciel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
