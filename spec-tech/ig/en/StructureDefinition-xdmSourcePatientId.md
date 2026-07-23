# XDM SourcePatientId - Portabilité des Données LGC v0.1.0

## Logical Model: XDM SourcePatientId 

 
Cette métadonnée contient l’identifiant secondaire du patient dans le système d’information du producteur (IPP) ou l’INS, s’il n’y a pas d’identifiant secondaire. Pour les documents d’expression personnelle du patient, cette métadonnée contient l’INS du patient, à savoir le même identifiant que patientId. 

**Usages:**

* Use this Logical Model: [XDM DocumentEntry](StructureDefinition-xdmDocumentEntry.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-xdmSourcePatientId.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-xdmSourcePatientId.csv), [Excel](../StructureDefinition-xdmSourcePatientId.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdmSourcePatientId",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmSourcePatientId",
  "version" : "0.1.0",
  "name" : "XDMSourcePatientId",
  "title" : "XDM SourcePatientId",
  "status" : "draft",
  "date" : "2026-07-23T16:11:23+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmSourcePatientId",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdmSourcePatientId",
      "path" : "xdmSourcePatientId",
      "short" : "XDM SourcePatientId",
      "definition" : "Cette métadonnée contient l’identifiant secondaire du patient dans le système d’information du producteur (IPP) ou l’INS, s’il n’y a pas d’identifiant secondaire. Pour les documents d’expression personnelle du patient, cette métadonnée contient l’INS du patient, à savoir le même identifiant que patientId. "
    },
    {
      "id" : "xdmSourcePatientId.CX1",
      "path" : "xdmSourcePatientId.CX1",
      "short" : "Identifiant secondaire du patient, en l’occurrence. Equivalent à PatientId s'il n'y a pas d'identifiant secondaire.",
      "definition" : "Identifiant secondaire du patient, en l’occurrence. Equivalent à PatientId s'il n'y a pas d'identifiant secondaire.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdmSourcePatientId.CX4",
      "path" : "xdmSourcePatientId.CX4",
      "short" : "Identifiant de l’autorité d’affectation de l'identifiant utilisé.",
      "definition" : "Cet identifiant, au format HL7 v.2.5 est constitué de trois sous-composants qui prennent les valeurs suivantes en fonction du type d'identifiant.\nINS : Valeur de Namespace ID (IS) = Vide, pas de valeur | Valeur de Universal ID (ST) = OID de l’autorité d’affectation de l’INS utilisé, prise dans la liste des OID des autorités d'affectation des INS | Valeur de Universal ID type (ID) = ISO\nAutre identifiant : Valeur de Namespace ID (IS) = Vide, pas de valeur | Valeur de Universal ID (ST) = OID de l’autorité d’affectation dl'identifiant (i.e. l'instituion qui a attribué cet identifiant) | Valeur de Universal ID type (ID) = ISO",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdmSourcePatientId.CX5",
      "path" : "xdmSourcePatientId.CX5",
      "short" : "'NH' pour les patients identifiés par leur INS, 'PI' pour les patients identifiés par d'autres identifiants.",
      "definition" : "'NH' pour les patients identifiés par leur INS, 'PI' pour les patients identifiés par d'autres identifiants.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
