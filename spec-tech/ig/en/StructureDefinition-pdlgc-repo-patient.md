# PDLGC Répertoire Patient - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Répertoire Patient 

 
Répertoire stockant les données médicales d'un patient, conformément aux spécifications d'Archives XDM 

**Usages:**

* Use this Logical Model: [PDLGC Archive Portabilite](StructureDefinition-pdlgc-archive-portabilite.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgc-repo-patient.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgc-repo-patient.csv), [Excel](../StructureDefinition-pdlgc-repo-patient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-repo-patient",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-repo-patient",
  "version" : "0.1.0",
  "name" : "PDLGCRepertoirePatient",
  "title" : "PDLGC Répertoire Patient",
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
  "description" : "Répertoire stockant les données médicales d'un patient, conformément aux spécifications d'Archives XDM",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-repo-patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-repo-patient",
      "path" : "pdlgc-repo-patient",
      "short" : "PDLGC Répertoire Patient",
      "definition" : "Répertoire stockant les données médicales d'un patient, conformément aux spécifications d'Archives XDM"
    }]
  }
}

```
