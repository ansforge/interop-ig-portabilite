# Association XDM (LM) - Portabilité des Données LGC v0.1.0

## Logical Model: Association XDM (LM) 

 
Modèle logique d'une association IHE XDS entre deux objets de l'archive de portabilité. Permet de relier un SubmissionSet ou un DocumentEntry à un autre (remplacement ou transformation). 

**Usages:**

* Use this Logical Model: [Archive XDM (LM)](StructureDefinition-archive-xdm.md) and [PDLGC Metadata](StructureDefinition-pdlgc-metadata.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-association-xdm.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-association-xdm.csv), [Excel](../StructureDefinition-association-xdm.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "association-xdm",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/association-xdm",
  "version" : "0.1.0",
  "name" : "Association",
  "title" : "Association XDM (LM)",
  "status" : "draft",
  "date" : "2026-07-17T11:25:46+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Modèle logique d'une association IHE XDS entre deux objets de l'archive de portabilité.\nPermet de relier un SubmissionSet ou un DocumentEntry à un autre (remplacement ou transformation).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/association-xdm",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "association-xdm",
      "path" : "association-xdm",
      "short" : "Association XDM (LM)",
      "definition" : "Modèle logique d'une association IHE XDS entre deux objets de l'archive de portabilité.\nPermet de relier un SubmissionSet ou un DocumentEntry à un autre (remplacement ou transformation)."
    },
    {
      "id" : "association-xdm.associationType",
      "path" : "association-xdm.associationType",
      "short" : "Type d'association",
      "definition" : "Type d'association",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/ValueSet/vs-association-type|0.1.0"
      }
    },
    {
      "id" : "association-xdm.sourceObject",
      "path" : "association-xdm.sourceObject",
      "short" : "Identifiant de l'objet source (SubmissionSet ou DocumentEntry)",
      "definition" : "Identifiant de l'objet source (SubmissionSet ou DocumentEntry)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uuid"
      }]
    },
    {
      "id" : "association-xdm.targetObject",
      "path" : "association-xdm.targetObject",
      "short" : "Identifiant de l'objet cible (SubmissionSet ou DocumentEntry)",
      "definition" : "Identifiant de l'objet cible (SubmissionSet ou DocumentEntry)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uuid"
      }]
    }]
  }
}

```
