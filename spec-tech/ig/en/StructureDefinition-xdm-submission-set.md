# XDM SubmissionSet - Portabilité des Données LGC v0.1.0

## Logical Model: XDM SubmissionSet 

 
Modèle logique d'un lot de soummission (SubmissionSet). 

**Usages:**

* Use this Logical Model: [PDLGC Metadata](StructureDefinition-pdlgc-metadata.md) and [XDM Archive XDM](StructureDefinition-xdm-archive.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-xdm-submission-set.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-xdm-submission-set.csv), [Excel](../StructureDefinition-xdm-submission-set.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdm-submission-set",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-submission-set",
  "version" : "0.1.0",
  "name" : "XDMSubmissionSet",
  "title" : "XDM SubmissionSet",
  "status" : "draft",
  "date" : "2026-07-21T16:53:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Modèle logique d'un lot de soummission (SubmissionSet).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-submission-set",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdm-submission-set",
      "path" : "xdm-submission-set",
      "short" : "XDM SubmissionSet",
      "definition" : "Modèle logique d'un lot de soummission (SubmissionSet)."
    },
    {
      "id" : "xdm-submission-set.entryUUID",
      "path" : "xdm-submission-set.entryUUID",
      "short" : "Identifiant unique du lot de soumission. Cet attribut est destiné à des fins de gestion interne alors que uniqueId est utilisé à des fins de référence externe.",
      "definition" : "Identifiant unique du lot de soumission. Cet attribut est destiné à des fins de gestion interne alors que uniqueId est utilisé à des fins de référence externe.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uuid"
      }]
    },
    {
      "id" : "xdm-submission-set.availabilityStatus",
      "path" : "xdm-submission-set.availabilityStatus",
      "short" : "Cette métadonnée représente la pertinence d'un lot de soumission. ",
      "definition" : "Cette métadonnée représente la pertinence d'un lot de soumission. ",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "example" : [{
        "label" : "version à jour du lot de soumission",
        "valueString" : "urn:oasis:names:tc:ebxml-regrep:StatusType:Approved"
      },
      {
        "label" : "version archivée du lot de soumission",
        "valueString" : "urn:asip:ci-sis:2010:StatusType:Archived "
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J52-AvailabilityStatus-CISIS/FHIR/JDV-J52-AvailabilityStatus-CISIS|20200424120000"
      }
    },
    {
      "id" : "xdm-submission-set.submissionTime",
      "path" : "xdm-submission-set.submissionTime",
      "short" : "Représente la date et heure de soumission.",
      "definition" : "Représente la date et heure de soumission.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "xdm-submission-set.title",
      "path" : "xdm-submission-set.title",
      "short" : "Titre du lot de soumission ",
      "definition" : "Titre du lot de soumission ",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdm-submission-set.comments",
      "path" : "xdm-submission-set.comments",
      "short" : "Cette métadonnée contient le commentaire associé au lot de soumission. ",
      "definition" : "Cette métadonnée contient le commentaire associé au lot de soumission. ",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdm-submission-set.patientID",
      "path" : "xdm-submission-set.patientID",
      "short" : "Cette métadonnée représente l’identifiant du patient, en l’occurrence, le matricule INS (NIR ou NIA) du patient tel que défini dans le cadre juridique.",
      "definition" : "Cette métadonnée représente l’identifiant du patient, en l’occurrence, le matricule INS (NIR ou NIA) du patient tel que défini dans le cadre juridique.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-patient-id"
      }]
    },
    {
      "id" : "xdm-submission-set.sourceID",
      "path" : "xdm-submission-set.sourceID",
      "short" : "Cette métadonnée représente l’identifiant unique global du système émetteur du lot de soumission",
      "definition" : "Cette métadonnée représente l’identifiant unique global du système émetteur du lot de soumission",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "oid"
      }]
    },
    {
      "id" : "xdm-submission-set.uniqueID",
      "path" : "xdm-submission-set.uniqueID",
      "short" : "Identifiant unique global affecté à ce lot de soumission par son créateur. Cet attribut est utilisé à des fins de référence externe alors que entryUUID est destiné à des fins de gestion interne.",
      "definition" : "Identifiant unique global affecté à ce lot de soumission par son créateur. Cet attribut est utilisé à des fins de référence externe alors que entryUUID est destiné à des fins de gestion interne.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "oid"
      }]
    },
    {
      "id" : "xdm-submission-set.contentTypeCode",
      "path" : "xdm-submission-set.contentTypeCode",
      "short" : "Ensemble de métadonnées représentant le type d’activité associé à l’événement clinique ayant abouti à la constitution du lot de soumission. ",
      "definition" : "**Submission Set**",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J03-XdsContentTypeCode-CISIS/FHIR/JDV-J03-XdsContentTypeCode-CISIS|20260223120000"
      }
    },
    {
      "id" : "xdm-submission-set.author",
      "path" : "xdm-submission-set.author",
      "short" : "Représente la personne physique ou morale et/ou le dispositif auteur d’un lot de soumission",
      "definition" : "Représente la personne physique ou morale et/ou le dispositif auteur d’un lot de soumission",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-author-submission-set"
      }]
    },
    {
      "id" : "xdm-submission-set.homeCommunityID",
      "path" : "xdm-submission-set.homeCommunityID",
      "short" : "Cette métadonnée correspond à l’identifiant de la communauté représentée par le système cible si celui-ci offre des fonctionnalités de communication avec d’autres communautés telles que présentées dans le profil XCA d’IHE. Elle n’est pas utilisée par les transactions décrites dans ce volet.",
      "definition" : "Cette métadonnée correspond à l’identifiant de la communauté représentée par le système cible si celui-ci offre des fonctionnalités de communication avec d’autres communautés telles que présentées dans le profil XCA d’IHE. Elle n’est pas utilisée par les transactions décrites dans ce volet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "oid"
      }]
    },
    {
      "id" : "xdm-submission-set.intendedRecipient",
      "path" : "xdm-submission-set.intendedRecipient",
      "short" : "Cette métadonnée représente les destinataires (structure ou professionnel) auxquels lot de soumission est destiné. Elle n’est pas utilisée par les transactions décrites dans ce volet.",
      "definition" : "Cette métadonnée représente les destinataires (structure ou professionnel) auxquels lot de soumission est destiné. Elle n’est pas utilisée par les transactions décrites dans ce volet.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
