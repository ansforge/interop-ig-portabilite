# DocumentEntry Portabilité (LM) - Portabilité des Données LGC v1.0.0

## Logical Model: DocumentEntry Portabilité (LM) 

 
Modèle logique d'une fiche documentaire (DocumentEntry) dans le contexte portabilité LGC. Adapté du DocumentEntry XDS pour les spécificités de l'archive XDM hors-ligne. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-document-entry-portabilite.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-document-entry-portabilite.csv), [Excel](../StructureDefinition-document-entry-portabilite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "document-entry-portabilite",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/document-entry-portabilite",
  "version" : "1.0.0",
  "name" : "DocumentEntryPortabilite",
  "title" : "DocumentEntry Portabilité (LM)",
  "status" : "draft",
  "date" : "2026-06-21T15:18:30+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Modèle logique d'une fiche documentaire (DocumentEntry) dans le contexte portabilité LGC.\nAdapté du DocumentEntry XDS pour les spécificités de l'archive XDM hors-ligne.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/document-entry-portabilite",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "document-entry-portabilite",
      "path" : "document-entry-portabilite",
      "short" : "DocumentEntry Portabilité (LM)",
      "definition" : "Modèle logique d'une fiche documentaire (DocumentEntry) dans le contexte portabilité LGC.\nAdapté du DocumentEntry XDS pour les spécificités de l'archive XDM hors-ligne."
    },
    {
      "id" : "document-entry-portabilite.entryUUID",
      "path" : "document-entry-portabilite.entryUUID",
      "short" : "Identifiant unique de la fiche document",
      "definition" : "Identifiant unique de la fiche document",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uuid"
      }]
    },
    {
      "id" : "document-entry-portabilite.URI",
      "path" : "document-entry-portabilite.URI",
      "short" : "Chemin relatif du fichier dans le SUBSET (ex: DOC00001.XML)",
      "definition" : "Métadonnée clé en mode XDM. Permet au destinataire de localiser le fichier\ndans l'archive sans connexion à un registre.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "document-entry-portabilite.mimeType",
      "path" : "document-entry-portabilite.mimeType",
      "short" : "Type MIME du document (ex: text/xml, application/pdf)",
      "definition" : "Type MIME du document (ex: text/xml, application/pdf)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "document-entry-portabilite.hash",
      "path" : "document-entry-portabilite.hash",
      "short" : "Empreinte SHA-256 du fichier document",
      "definition" : "Empreinte SHA-256 du fichier document",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "document-entry-portabilite.size",
      "path" : "document-entry-portabilite.size",
      "short" : "Taille du fichier en octets",
      "definition" : "Taille du fichier en octets",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "unsignedInt"
      }]
    },
    {
      "id" : "document-entry-portabilite.languageCode",
      "path" : "document-entry-portabilite.languageCode",
      "short" : "Langue du document (ex: fr-FR)",
      "definition" : "Langue du document (ex: fr-FR)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "document-entry-portabilite.creationTime",
      "path" : "document-entry-portabilite.creationTime",
      "short" : "Date et heure de création du document",
      "definition" : "Date et heure de création du document",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "document-entry-portabilite.serviceStartTime",
      "path" : "document-entry-portabilite.serviceStartTime",
      "short" : "Date de début de l'acte clinique de référence",
      "definition" : "Date de début de l'acte clinique de référence",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "document-entry-portabilite.serviceEndTime",
      "path" : "document-entry-portabilite.serviceEndTime",
      "short" : "Date de fin de l'acte clinique (si connue)",
      "definition" : "Date de fin de l'acte clinique (si connue)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "document-entry-portabilite.title",
      "path" : "document-entry-portabilite.title",
      "short" : "Titre du document",
      "definition" : "Titre du document",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "document-entry-portabilite.patientID",
      "path" : "document-entry-portabilite.patientID",
      "short" : "Matricule INS du patient (OID 1.2.250.1.213.1.4.8)",
      "definition" : "Matricule INS du patient (OID 1.2.250.1.213.1.4.8)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "document-entry-portabilite.sourcePatientID",
      "path" : "document-entry-portabilite.sourcePatientID",
      "short" : "Identifiant du patient dans le système source (IPP ou INS)",
      "definition" : "Identifiant du patient dans le système source (IPP ou INS)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "document-entry-portabilite.availabilityStatus",
      "path" : "document-entry-portabilite.availabilityStatus",
      "short" : "Statut de disponibilité — fixé à Approved pour une archive portabilité",
      "definition" : "Statut de disponibilité — fixé à Approved pour une archive portabilité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "document-entry-portabilite.class",
      "path" : "document-entry-portabilite.class",
      "short" : "Classe du document",
      "definition" : "Classe du document",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J06-XdsClassCode-CISIS/FHIR/JDV-J06-XdsClassCode-CISIS"
      }
    },
    {
      "id" : "document-entry-portabilite.type",
      "path" : "document-entry-portabilite.type",
      "short" : "Type du document",
      "definition" : "Type du document",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J07-XdsTypeCode-CISIS/FHIR/JDV-J07-XdsTypeCode-CISIS"
      }
    },
    {
      "id" : "document-entry-portabilite.format",
      "path" : "document-entry-portabilite.format",
      "short" : "Format du document",
      "definition" : "Format du document",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J10-XdsFormatCode-CISIS/FHIR/JDV-J10-XdsFormatCode-CISIS"
      }
    },
    {
      "id" : "document-entry-portabilite.confidentiality",
      "path" : "document-entry-portabilite.confidentiality",
      "short" : "Niveau de confidentialité",
      "definition" : "Niveau de confidentialité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J58-ConfidentialityCode-DMP/FHIR/JDV-J58-ConfidentialityCode-DMP"
      }
    },
    {
      "id" : "document-entry-portabilite.healthcareFacilityTypeCode",
      "path" : "document-entry-portabilite.healthcareFacilityTypeCode",
      "short" : "Secteur d'activité",
      "definition" : "Secteur d'activité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J02-XdsHealthcareFacilityTypeCode-CISIS/FHIR/JDV-J02-XdsHealthcareFacilityTypeCode-CISIS"
      }
    },
    {
      "id" : "document-entry-portabilite.practiceSetting",
      "path" : "document-entry-portabilite.practiceSetting",
      "short" : "Contexte de l'acte clinique",
      "definition" : "Contexte de l'acte clinique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J04-XdsPracticeSettingCode-CISIS/FHIR/JDV-J04-XdsPracticeSettingCode-CISIS"
      }
    },
    {
      "id" : "document-entry-portabilite.author",
      "path" : "document-entry-portabilite.author",
      "short" : "Auteur(s) du document (RPPS ou ADELI)",
      "definition" : "Auteur(s) du document (RPPS ou ADELI)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "document-entry-portabilite.sourceID",
      "path" : "document-entry-portabilite.sourceID",
      "short" : "SIRET de l'éditeur source (repositoryUniqueId en contexte portabilité)",
      "definition" : "SIRET de l'éditeur source (repositoryUniqueId en contexte portabilité)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "oid"
      }]
    }]
  }
}

```
