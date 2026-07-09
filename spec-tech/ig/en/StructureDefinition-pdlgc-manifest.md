# PDLGC Manifest - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Manifest 

 
Le fichier MANIFEST.XML porte les métadonnées globales de l'export (nombre de dossiers patients, volumétrie, éléments d'intégrité), distinctes des métadonnées XDM portées par chaque `METADATA.XML` patient 

**Usages:**

* Use this Logical Model: [PDLGC Archive Portabilite](StructureDefinition-pdlgc-archive-portabilite.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgc-manifest.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgc-manifest.csv), [Excel](../StructureDefinition-pdlgc-manifest.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-manifest",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-manifest",
  "version" : "0.1.0",
  "name" : "PDLGCManifest",
  "title" : "PDLGC Manifest",
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
  "description" : "Le fichier MANIFEST.XML porte les métadonnées globales de l'export (nombre de dossiers patients, volumétrie, éléments d'intégrité), distinctes des métadonnées XDM portées par chaque `METADATA.XML` patient",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-manifest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-manifest",
      "path" : "pdlgc-manifest",
      "short" : "PDLGC Manifest",
      "definition" : "Le fichier MANIFEST.XML porte les métadonnées globales de l'export (nombre de dossiers patients, volumétrie, éléments d'intégrité), distinctes des métadonnées XDM portées par chaque `METADATA.XML` patient"
    },
    {
      "id" : "pdlgc-manifest.exportId",
      "path" : "pdlgc-manifest.exportId",
      "short" : "Identifiant unique affecté à l'archive de portabilité",
      "definition" : "Identifiant unique affecté à l'archive de portabilité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "pdlgc-manifest.exportType",
      "path" : "pdlgc-manifest.exportType",
      "short" : "Type de l'export : UNITAIRE|CIBLE|MASSIF",
      "definition" : "Type de l'export : UNITAIRE|CIBLE|MASSIF",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/ValueSet/pdlgc-export-type-vs|0.1.0"
      }
    },
    {
      "id" : "pdlgc-manifest.exportStartTime",
      "path" : "pdlgc-manifest.exportStartTime",
      "short" : "Date de début de la période couverte par l'export dans le cas d'un export ciblé",
      "definition" : "Date de début de la période couverte par l'export dans le cas d'un export ciblé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "pdlgc-manifest.exportEndTime",
      "path" : "pdlgc-manifest.exportEndTime",
      "short" : "Date de fin de la période couverte par l'export dans le cas d'un export ciblé",
      "definition" : "Date de fin de la période couverte par l'export dans le cas d'un export ciblé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "pdlgc-manifest.exportStatus",
      "path" : "pdlgc-manifest.exportStatus",
      "short" : "COMPLETE|PARTIAL|SAMPLE",
      "definition" : "COMPLETE|PARTIAL|SAMPLE",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/ValueSet/pdlgc-repo-type-vs|0.1.0"
      }
    },
    {
      "id" : "pdlgc-manifest.comments",
      "path" : "pdlgc-manifest.comments",
      "short" : "commentaire associé à l'export",
      "definition" : "commentaire associé à l'export",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-manifest.editeurSortant",
      "path" : "pdlgc-manifest.editeurSortant",
      "short" : "Editeur responsable de l'export des données LGC",
      "definition" : "Editeur responsable de l'export des données LGC",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-fournisseur-sortant"
      }]
    },
    {
      "id" : "pdlgc-manifest.PatientArchiveCount",
      "path" : "pdlgc-manifest.PatientArchiveCount",
      "short" : "Nombre d'archives patients transportées",
      "definition" : "Nombre d'archives patients transportées",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }]
    },
    {
      "id" : "pdlgc-manifest.TransverseArchiveCount",
      "path" : "pdlgc-manifest.TransverseArchiveCount",
      "short" : "Nombre d'archives transverse trasnportées",
      "definition" : "Nombre d'archives transverse trasnportées",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }]
    },
    {
      "id" : "pdlgc-manifest.Archive",
      "path" : "pdlgc-manifest.Archive",
      "short" : "informations sur les archives patients et transverses contenues dans l'archive de portabilité",
      "definition" : "informations sur les archives patients et transverses contenues dans l'archive de portabilité",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-manifest.Archive.archiveid",
      "path" : "pdlgc-manifest.Archive.archiveid",
      "short" : "identifiant du répertoire ('PATnnnnn' ou 'TRANSV')",
      "definition" : "identifiant du répertoire ('PATnnnnn' ou 'TRANSV')",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier|5.3.0"]
      }]
    },
    {
      "id" : "pdlgc-manifest.Archive.type",
      "path" : "pdlgc-manifest.Archive.type",
      "short" : "Patient | Transverse",
      "definition" : "Patient | Transverse",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/ValueSet/pdlgc-repo-type-vs|0.1.0"
      }
    },
    {
      "id" : "pdlgc-manifest.Archive.patientId",
      "path" : "pdlgc-manifest.Archive.patientId",
      "short" : "Identifiant du Patient s'il s'agit d'une archive XDM Patient",
      "definition" : "Identifiant du Patient s'il s'agit d'une archive XDM Patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-manifest.Archive.size",
      "path" : "pdlgc-manifest.Archive.size",
      "short" : "Taille de l'archive zip",
      "definition" : "Taille de l'archive zip",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "pdlgc-manifest.Archive.hash",
      "path" : "pdlgc-manifest.Archive.hash",
      "short" : "Hash SHA-256 du répertoire",
      "definition" : "Hash SHA-256 du répertoire",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
