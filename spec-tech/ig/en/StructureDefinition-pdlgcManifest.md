# PDLGC Manifest - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Manifest 

 
Le fichier MANIFEST.XML porte les métadonnées globales de l'export (nombre de dossiers patients, volumétrie, éléments d'intégrité), distinctes des métadonnées XDM portées par chaque `METADATA.XML` patient 

**Usages:**

* Use this Logical Model: [PDLGC Archive Portabilite](StructureDefinition-pdlgcArchivePortabilite.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgcManifest.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgcManifest.csv), [Excel](../StructureDefinition-pdlgcManifest.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgcManifest",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcManifest",
  "version" : "0.1.0",
  "name" : "PDLGCManifest",
  "title" : "PDLGC Manifest",
  "status" : "draft",
  "date" : "2026-07-30T15:04:16+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcManifest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgcManifest",
      "path" : "pdlgcManifest",
      "short" : "PDLGC Manifest",
      "definition" : "Le fichier MANIFEST.XML porte les métadonnées globales de l'export (nombre de dossiers patients, volumétrie, éléments d'intégrité), distinctes des métadonnées XDM portées par chaque `METADATA.XML` patient"
    },
    {
      "id" : "pdlgcManifest.exportId",
      "path" : "pdlgcManifest.exportId",
      "short" : "Identifiant unique affecté à l'archive de portabilité",
      "definition" : "Identifiant unique affecté à l'archive de portabilité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "pdlgcManifest.exportType",
      "path" : "pdlgcManifest.exportType",
      "short" : "Type de l'export : UNITAIRE|CIBLE|MASSIF",
      "definition" : "Type de l'export : UNITAIRE|CIBLE|MASSIF",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/ValueSet/vs-pdlgc-export-type|0.1.0"
      }
    },
    {
      "id" : "pdlgcManifest.exportStartTime",
      "path" : "pdlgcManifest.exportStartTime",
      "short" : "Date de début de la période couverte par l'export dans le cas d'un export ciblé",
      "definition" : "Date de début de la période couverte par l'export dans le cas d'un export ciblé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "pdlgcManifest.exportEndTime",
      "path" : "pdlgcManifest.exportEndTime",
      "short" : "Date de fin de la période couverte par l'export dans le cas d'un export ciblé",
      "definition" : "Date de fin de la période couverte par l'export dans le cas d'un export ciblé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "pdlgcManifest.exportStatus",
      "path" : "pdlgcManifest.exportStatus",
      "short" : "COMPLETE|PARTIAL|SAMPLE",
      "definition" : "COMPLETE|PARTIAL|SAMPLE",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/ValueSet/vs-pdlgc-export-status|0.1.0"
      }
    },
    {
      "id" : "pdlgcManifest.comments",
      "path" : "pdlgcManifest.comments",
      "short" : "commentaire associé à l'export",
      "definition" : "commentaire associé à l'export",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcManifest.author",
      "path" : "pdlgcManifest.author",
      "short" : "Logiciel responsable de la production et de l'export de l'archive de portabiltié",
      "definition" : "Logiciel responsable de la production et de l'export de l'archive de portabiltié",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcAuthor"
      }]
    },
    {
      "id" : "pdlgcManifest.statistics",
      "path" : "pdlgcManifest.statistics",
      "short" : "Statistiques globales de l'archive",
      "definition" : "Statistiques globales de l'archive",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcManifest.statistics.patientArchiveCount",
      "path" : "pdlgcManifest.statistics.patientArchiveCount",
      "short" : "Nombre d'archives patients transportées",
      "definition" : "Nombre d'archives patients transportées",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }]
    },
    {
      "id" : "pdlgcManifest.statistics.transverseArchiveCount",
      "path" : "pdlgcManifest.statistics.transverseArchiveCount",
      "short" : "Nombre d'archives transverse trasnportées",
      "definition" : "Nombre d'archives transverse trasnportées",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }]
    },
    {
      "id" : "pdlgcManifest.Archives",
      "path" : "pdlgcManifest.Archives",
      "short" : "informations relatives aux archives patients et transverses contenues dans l'archive de portabilité",
      "definition" : "informations relatives aux archives patients et transverses contenues dans l'archive de portabilité",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcManifest.Archives.Archive",
      "path" : "pdlgcManifest.Archives.Archive",
      "short" : "informations relatives à une archive Patient ou Transverse",
      "definition" : "informations relatives à une archive Patient ou Transverse",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "ArchiveType-invariant",
        "severity" : "error",
        "human" : "Le patientId est obligatoire si et seulement si l'archive est de type PATIENT (absent pour une archive TRANSVERSE)",
        "expression" : "(type = 'PATIENT') = patientId.exists()",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcManifest|0.1.0"
      }]
    },
    {
      "id" : "pdlgcManifest.Archives.Archive.archiveid",
      "path" : "pdlgcManifest.Archives.Archive.archiveid",
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
      "id" : "pdlgcManifest.Archives.Archive.type",
      "path" : "pdlgcManifest.Archives.Archive.type",
      "short" : "PATIENT | TRANSVERSE",
      "definition" : "PATIENT | TRANSVERSE",
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
      "id" : "pdlgcManifest.Archives.Archive.patientId",
      "path" : "pdlgcManifest.Archives.Archive.patientId",
      "short" : "Identifiant du Patient s'il s'agit d'une archive XDM Patient",
      "definition" : "Identifiant du Patient s'il s'agit d'une archive XDM Patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmPatientId"
      }]
    },
    {
      "id" : "pdlgcManifest.Archives.Archive.size",
      "path" : "pdlgcManifest.Archives.Archive.size",
      "short" : "Taille de l'archive zip",
      "definition" : "Taille de l'archive zip",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "pdlgcManifest.Archives.Archive.hash",
      "path" : "pdlgcManifest.Archives.Archive.hash",
      "short" : "Hash SHA-256 de l'archive concernée",
      "definition" : "Hash SHA-256 de l'archive concernée",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
