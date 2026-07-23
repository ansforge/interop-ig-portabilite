# PDLGC Manifest Archives - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Manifest Archives 

 
Informations relatives aux répertoires Patient et transverse exportées dans l'archive de portabilité 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgcManifestArchives.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgcManifestArchives.csv), [Excel](../StructureDefinition-pdlgcManifestArchives.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgcManifestArchives",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcManifestArchives",
  "version" : "0.1.0",
  "name" : "PDLGCManifestArchives",
  "title" : "PDLGC Manifest Archives",
  "status" : "draft",
  "date" : "2026-07-23T16:03:49+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Informations relatives aux répertoires Patient et transverse exportées dans l'archive de portabilité",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcManifestArchives",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgcManifestArchives",
      "path" : "pdlgcManifestArchives",
      "short" : "PDLGC Manifest Archives",
      "definition" : "Informations relatives aux répertoires Patient et transverse exportées dans l'archive de portabilité"
    },
    {
      "id" : "pdlgcManifestArchives.type",
      "path" : "pdlgcManifestArchives.type",
      "short" : "Patient | Transverse",
      "definition" : "Patient | Transverse",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/ValueSet/vs-pdlgc-archive-type|0.1.0"
      }
    },
    {
      "id" : "pdlgcManifestArchives.nom",
      "path" : "pdlgcManifestArchives.nom",
      "short" : "Nom du répertoire",
      "definition" : "Nom du répertoire",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcManifestArchives.patientId",
      "path" : "pdlgcManifestArchives.patientId",
      "short" : "Identifiant du Patient s'il s'agit d'un répertoire Patient",
      "definition" : "Identifiant du Patient s'il s'agit d'un répertoire Patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/patId"
      }]
    },
    {
      "id" : "pdlgcManifestArchives.periodeCouverte",
      "path" : "pdlgcManifestArchives.periodeCouverte",
      "short" : "Période couverte par l'export dans le cas d'un export ciblé",
      "definition" : "Période couverte par l'export dans le cas d'un export ciblé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "pdlgcManifestArchives.metadataHash",
      "path" : "pdlgcManifestArchives.metadataHash",
      "short" : "Hash SHA-256 du fichier Metadata inclus dans le répertoire",
      "definition" : "Hash SHA-256 du fichier Metadata inclus dans le répertoire",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
