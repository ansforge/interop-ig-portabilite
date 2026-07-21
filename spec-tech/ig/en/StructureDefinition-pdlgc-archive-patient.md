# PDLGC Archive Patient - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Archive Patient 

 
Archive stockant les données médicales liées à un patient, ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM 

**Usages:**

* Use this Logical Model: [PDLGC Archive Portabilite](StructureDefinition-pdlgc-archive-portabilite.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgc-archive-patient.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgc-archive-patient.csv), [Excel](../StructureDefinition-pdlgc-archive-patient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-archive-patient",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-archive-patient",
  "version" : "0.1.0",
  "name" : "PDLGCArchivePatient",
  "title" : "PDLGC Archive Patient",
  "status" : "draft",
  "date" : "2026-07-21T16:28:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Archive stockant les données médicales liées à un patient, ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-archive-patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-archive-patient",
      "path" : "pdlgc-archive-patient",
      "short" : "Archive stockant les données médicales liées à un patient, ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM.",
      "definition" : "Archive stockant les données médicales liées à un patient, ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM.",
      "comment" : "Transaction ExportArchivePortabilite"
    },
    {
      "id" : "pdlgc-archive-patient.README",
      "path" : "pdlgc-archive-patient.README",
      "short" : "Informations éditoriales et instructions d'exploitation de l'archive",
      "definition" : "Informations éditoriales et instructions d'exploitation de l'archive",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-readme"
      }]
    },
    {
      "id" : "pdlgc-archive-patient.INDEX",
      "path" : "pdlgc-archive-patient.INDEX",
      "short" : "Informations éditoriales",
      "definition" : "Informations éditoriales",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-index"
      }]
    },
    {
      "id" : "pdlgc-archive-patient.PDF",
      "path" : "pdlgc-archive-patient.PDF",
      "short" : "Répertoire contenant une copie PDF de tous les documents transportés dans le répertoire IHE_XDM.",
      "definition" : "Répertoire contenant une copie PDF de tous les documents transportés dans le répertoire IHE_XDM.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-archive-patient.PDF.documentsPDF",
      "path" : "pdlgc-archive-patient.PDF.documentsPDF",
      "short" : "Documents PDF destinés à la consultation. Ces documents ne sont pas intégrés par le destinataire si le destinataire est une système",
      "definition" : "Documents PDF destinés à la consultation. Ces documents ne sont pas intégrés par le destinataire si le destinataire est une système",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Document"
      }]
    },
    {
      "id" : "pdlgc-archive-patient.IHEXDM",
      "path" : "pdlgc-archive-patient.IHEXDM",
      "short" : "répertoire IHE_XDM contenant le lot de soumissions des données d'un patient. Nom du répertoire fixé à IHE_XDM",
      "definition" : "répertoire IHE_XDM contenant le lot de soumissions des données d'un patient. Nom du répertoire fixé à IHE_XDM",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-archive-patient.IHEXDM.SUBSET01",
      "path" : "pdlgc-archive-patient.IHEXDM.SUBSET01",
      "short" : "lot de soumission contenant les données d'un patient",
      "definition" : "lot de soumission contenant les données d'un patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-archive-patient.IHEXDM.SUBSET01.METADATA",
      "path" : "pdlgc-archive-patient.IHEXDM.SUBSET01.METADATA",
      "short" : "métadonnées associées aux documents du lot de soumission",
      "definition" : "métadonnées associées aux documents du lot de soumission",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-metadata"
      }]
    },
    {
      "id" : "pdlgc-archive-patient.IHEXDM.SUBSET01.documents",
      "path" : "pdlgc-archive-patient.IHEXDM.SUBSET01.documents",
      "short" : "Documents de santé du patient",
      "definition" : "Documents de santé du patient",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Document"
      }]
    }]
  }
}

```
