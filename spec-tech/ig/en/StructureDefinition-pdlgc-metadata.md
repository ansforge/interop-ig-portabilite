# PDLGC Metadata - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Metadata 

 
Modèle logique décrivant la structure d'un fichier METADATA associé à un SUBSET IHE XDM. Regroupe un SubmissionSet, ses DocumentEntries et les Associations entre objets. 

**Usages:**

* Use this Logical Model: [PDLGC Archive Patient](StructureDefinition-pdlgc-archive-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgc-metadata.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgc-metadata.csv), [Excel](../StructureDefinition-pdlgc-metadata.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-metadata",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-metadata",
  "version" : "0.1.0",
  "name" : "PDLGCMetadata",
  "title" : "PDLGC Metadata",
  "status" : "draft",
  "date" : "2026-07-16T11:12:17+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Modèle logique décrivant la structure d'un fichier METADATA associé à un SUBSET IHE XDM.\nRegroupe un SubmissionSet, ses DocumentEntries et les Associations entre objets.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-metadata",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-metadata",
      "path" : "pdlgc-metadata",
      "short" : "PDLGC Metadata",
      "definition" : "Modèle logique décrivant la structure d'un fichier METADATA associé à un SUBSET IHE XDM.\nRegroupe un SubmissionSet, ses DocumentEntries et les Associations entre objets."
    },
    {
      "id" : "pdlgc-metadata.submissionSet",
      "path" : "pdlgc-metadata.submissionSet",
      "short" : "Lot de soumission du SUBSET",
      "definition" : "Lot de soumission du SUBSET",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/SubmissionSet"
      }]
    },
    {
      "id" : "pdlgc-metadata.documentEntry",
      "path" : "pdlgc-metadata.documentEntry",
      "short" : "Fiches documentaires des documents inclus dans le SUBSET",
      "definition" : "Fiches documentaires des documents inclus dans le SUBSET",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/DocumentEntry"
      }]
    },
    {
      "id" : "pdlgc-metadata.association",
      "path" : "pdlgc-metadata.association",
      "short" : "Associations entre objets du SUBSET (remplacement, transformation)",
      "definition" : "Associations entre objets du SUBSET (remplacement, transformation)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/association-xdm"
      }]
    }]
  }
}

```
