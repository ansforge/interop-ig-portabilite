# PDLGC Archive Portabilite - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Archive Portabilite 

 
L'archive de Portabilité est un conteneur structuré, regroupant l'ensemble des documents et données LGC exportées ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire. Convention de nommage : PAAAAAMMJJThhmmss.ZIP, avec PA = préfixe, AAAAMMJJThhmmss = horodatage 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgc-archive-portabilite.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgc-archive-portabilite.csv), [Excel](../StructureDefinition-pdlgc-archive-portabilite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-archive-portabilite",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-archive-portabilite",
  "version" : "0.1.0",
  "name" : "PDLGCArchivePortabilite",
  "title" : "PDLGC Archive Portabilite",
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
  "description" : "L'archive de Portabilité est un conteneur structuré, regroupant l'ensemble des documents et données LGC exportées ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire. Convention de nommage : PAAAAAMMJJThhmmss.ZIP, avec PA = préfixe, AAAAMMJJThhmmss = horodatage",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-archive-portabilite",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-archive-portabilite",
      "path" : "pdlgc-archive-portabilite",
      "short" : "L'archive de Portabilité est un conteneur structuré, regroupant l'ensemble des documents et données LGC exportées ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire.",
      "definition" : "L'archive de Portabilité est un conteneur structuré, regroupant l'ensemble des documents et données LGC exportées ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire.",
      "comment" : "Transaction ExportArchivePortabilite"
    },
    {
      "id" : "pdlgc-archive-portabilite.readme",
      "path" : "pdlgc-archive-portabilite.readme",
      "short" : "Informations éditoriales et instructions d'exploitation de l'archive de portabilité.",
      "definition" : "Informations éditoriales et instructions d'exploitation de l'archive de portabilité.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-readme"
      }],
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-archive-portabilite.manifest",
      "path" : "pdlgc-archive-portabilite.manifest",
      "short" : "Vue synthétique du contenu de l'archive de portabilité, incluant rapport de volumétrie et d'intégrité.",
      "definition" : "Vue synthétique du contenu de l'archive de portabilité, incluant rapport de volumétrie et d'intégrité.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-manifest"
      }],
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-archive-portabilite.signature",
      "path" : "pdlgc-archive-portabilite.signature",
      "short" : "signature XAdES de l'archive attestant de l'imputabilité et l'intégrité des données.",
      "definition" : "signature XAdES de l'archive attestant de l'imputabilité et l'intégrité des données.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-signature"
      }],
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-archive-portabilite.Documentation",
      "path" : "pdlgc-archive-portabilite.Documentation",
      "short" : "répertoire de stockage de la documentation d'export permettant l'interprétation de l'archive par le système destinataire (dictionnaire de données, mapping, schémas techniques, jeu d'échantillons,...).",
      "definition" : "répertoire de stockage de la documentation d'export permettant l'interprétation de l'archive par le système destinataire (dictionnaire de données, mapping, schémas techniques, jeu d'échantillons,...).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-documentation"
      }],
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-archive-portabilite.ArchiveTransverse",
      "path" : "pdlgc-archive-portabilite.ArchiveTransverse",
      "short" : "Archive de données transverses liées au praticien ou au cabinet (agenda, données de comptabilité, logs d'accès,...).",
      "definition" : "Archive de données transverses liées au praticien ou au cabinet (agenda, données de comptabilité, logs d'accès,...).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-archive-transverse"
      }],
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-archive-portabilite.ArchivePatient",
      "path" : "pdlgc-archive-portabilite.ArchivePatient",
      "short" : "Archive de données médicales liées au patient respectant le nommage `PATNNNNN` ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM.",
      "definition" : "Archive de données médicales liées au patient respectant le nommage `PATNNNNN` ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-archive-patient"
      }],
      "mustSupport" : true
    }]
  }
}

```
