# XDM SourcePatientId - Portabilité des Données LGC v0.1.0

## Logical Model: XDM SourcePatientId 

 
Cette métadonnée contient l’identifiant secondaire du patient dans le système d’information du producteur (IPP) ou l’INS, s’il n’y a pas d’identifiant secondaire. Pour les documents d’expression personnelle du patient, cette métadonnée contient l’INS du patient, à savoir le même identifiant que patientId. 

**Usages:**

* Use this Logical Model: [XDM DocumentEntry](StructureDefinition-xdm-document-entry.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-xdm-source-patient-id.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-xdm-source-patient-id.csv), [Excel](../StructureDefinition-xdm-source-patient-id.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdm-source-patient-id",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-source-patient-id",
  "version" : "0.1.0",
  "name" : "XDMSourcePatientId",
  "title" : "XDM SourcePatientId",
  "status" : "draft",
  "date" : "2026-07-21T08:40:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Cette métadonnée contient l’identifiant secondaire du patient dans le système d’information du producteur (IPP) ou l’INS, s’il n’y a pas d’identifiant secondaire. Pour les documents d’expression personnelle du patient, cette métadonnée contient l’INS du patient, à savoir le même identifiant que patientId. ",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-source-patient-id",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdm-source-patient-id",
      "path" : "xdm-source-patient-id",
      "short" : "XDM SourcePatientId",
      "definition" : "Cette métadonnée contient l’identifiant secondaire du patient dans le système d’information du producteur (IPP) ou l’INS, s’il n’y a pas d’identifiant secondaire. Pour les documents d’expression personnelle du patient, cette métadonnée contient l’INS du patient, à savoir le même identifiant que patientId. "
    },
    {
      "id" : "xdm-source-patient-id.CX1",
      "path" : "xdm-source-patient-id.CX1",
      "short" : "Identifiant du patient, en l’occurrence, le matricule INS du patient tel que défini dans le cadre juridique",
      "definition" : "Identifiant du patient, en l’occurrence, le matricule INS du patient tel que défini dans le cadre juridique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "xdm-source-patient-id.CX4",
      "path" : "xdm-source-patient-id.CX4",
      "short" : "Identifiant de l’autorité d’affectation de l’INS utilisé.",
      "definition" : "Identifiant de l’autorité d’affectation de l’INS utilisé.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdm-source-patient-id.CX5",
      "path" : "xdm-source-patient-id.CX5",
      "short" : " 'NH' pour un maticule INS tel que défini dans le cadre juridique",
      "definition" : " 'NH' pour un maticule INS tel que défini dans le cadre juridique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
