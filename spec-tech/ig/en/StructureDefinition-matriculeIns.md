# MatriculeINS - Portabilité des Données LGC v0.1.0

## Logical Model: MatriculeINS 

 
Matricule de l'Identité Nationale de Santé (INS). Il correspond au NIR (Numéro d’Identification au Répertoire des personnes physiques) ou au NIA (Numéro Identifiant Attente) de l’individu). 

**Usages:**

* Use this Logical Model: [XDM ActorPatient](StructureDefinition-xdmActorPatient.md) and [XDM Identifiant](StructureDefinition-xdmIdentifiant.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-matriculeIns.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-matriculeIns.csv), [Excel](../StructureDefinition-matriculeIns.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "matriculeIns",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/matriculeIns",
  "version" : "0.1.0",
  "name" : "MatriculeINS",
  "title" : "MatriculeINS",
  "status" : "draft",
  "date" : "2026-07-23T14:32:10+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Matricule de l'Identité Nationale de Santé (INS). Il correspond au NIR (Numéro d’Identification au Répertoire des personnes physiques) ou au NIA (Numéro Identifiant Attente) de l’individu).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/matriculeIns",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "matriculeIns",
      "path" : "matriculeIns",
      "short" : "MatriculeINS",
      "definition" : "Matricule de l'Identité Nationale de Santé (INS). Il correspond au NIR (Numéro d’Identification au Répertoire des personnes physiques) ou au NIA (Numéro Identifiant Attente) de l’individu)."
    },
    {
      "id" : "matriculeIns.matriculeINS",
      "path" : "matriculeIns.matriculeINS",
      "short" : "Matricule INS",
      "definition" : "Matricule INS",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
