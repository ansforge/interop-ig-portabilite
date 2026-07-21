# XDM SourcePatientInfo - Portabilité des Données LGC v0.1.0

## Logical Model: XDM SourcePatientInfo 

 
Cette métadonnée contient les traits d’identité du patient concerné par le document, connus par le producteur du document. Les informations présentes dans la métadonnée sourcePatientInfo ne doivent en aucun cas être réutilisées pour calculer un identifiant, ni être mises à jour après la soumission du document. 

**Usages:**

* Use this Logical Model: [XDM DocumentEntry](StructureDefinition-xdm-document-entry.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-xdm-source-patient-info.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-xdm-source-patient-info.csv), [Excel](../StructureDefinition-xdm-source-patient-info.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdm-source-patient-info",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-source-patient-info",
  "version" : "0.1.0",
  "name" : "XDMSourcePatientInfo",
  "title" : "XDM SourcePatientInfo",
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
  "description" : "Cette métadonnée contient les traits d’identité du patient concerné par le document, connus par le producteur du document. Les informations présentes dans la métadonnée sourcePatientInfo ne doivent en aucun cas être réutilisées pour calculer un identifiant, ni être mises à jour après la soumission du document. \n",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-source-patient-info",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdm-source-patient-info",
      "path" : "xdm-source-patient-info",
      "short" : "XDM SourcePatientInfo",
      "definition" : "Cette métadonnée contient les traits d’identité du patient concerné par le document, connus par le producteur du document. Les informations présentes dans la métadonnée sourcePatientInfo ne doivent en aucun cas être réutilisées pour calculer un identifiant, ni être mises à jour après la soumission du document. \n"
    },
    {
      "id" : "xdm-source-patient-info.PID3",
      "path" : "xdm-source-patient-info.PID3",
      "short" : "Liste des identifiants du patient",
      "definition" : "Liste des identifiants du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "xdm-source-patient-info.PID5",
      "path" : "xdm-source-patient-info.PID5",
      "short" : "Nom et prénoms du patient",
      "definition" : "Nom et prénoms du patient",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdm-source-patient-info.PID7",
      "path" : "xdm-source-patient-info.PID7",
      "short" : "Date/heure de naissance du patient",
      "definition" : "Date/heure de naissance du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdm-source-patient-info.PID8",
      "path" : "xdm-source-patient-info.PID8",
      "short" : "Sexe du patient",
      "definition" : "Sexe du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdm-source-patient-info.PID11",
      "path" : "xdm-source-patient-info.PID11",
      "short" : "Adresse du patient",
      "definition" : "Adresse du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdm-source-patient-info.PID13",
      "path" : "xdm-source-patient-info.PID13",
      "short" : "Téléphone de la résidence du patient",
      "definition" : "Téléphone de la résidence du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdm-source-patient-info.PID14",
      "path" : "xdm-source-patient-info.PID14",
      "short" : "Téléphone professionnel du patient",
      "definition" : "Téléphone professionnel du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdm-source-patient-info.PID15",
      "path" : "xdm-source-patient-info.PID15",
      "short" : "Langue du patient",
      "definition" : "Langue du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdm-source-patient-info.PID16",
      "path" : "xdm-source-patient-info.PID16",
      "short" : "Statut marital du patient",
      "definition" : "Statut marital du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdm-source-patient-info.PID18",
      "path" : "xdm-source-patient-info.PID18",
      "short" : "Numéro de compte du patient",
      "definition" : "Numéro de compte du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdm-source-patient-info.PID21",
      "path" : "xdm-source-patient-info.PID21",
      "short" : "Identifiant de la mère du patient",
      "definition" : "Identifiant de la mère du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
