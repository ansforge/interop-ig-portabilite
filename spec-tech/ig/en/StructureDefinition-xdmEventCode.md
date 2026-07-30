# XDM EventCode - Portabilité des Données LGC v0.1.0

## Logical Model: XDM EventCode 

 
Modèle logique d'un eventCode. Un EventCode peut contenir le code représentant : 
* un évènement documenté (acte, traitement, diagnostic, etc…),
* une modalité d’acquisition,
* une région anatomique.
 

**Usages:**

* Use this Logical Model: [XDM DocumentEntry](StructureDefinition-xdmDocumentEntry.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-xdmEventCode.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-xdmEventCode.csv), [Excel](../StructureDefinition-xdmEventCode.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdmEventCode",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmEventCode",
  "version" : "0.1.0",
  "name" : "XDMEventCode",
  "title" : "XDM EventCode",
  "status" : "draft",
  "date" : "2026-07-30T15:04:16+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Modèle logique d'un eventCode.\nUn EventCode peut contenir le code représentant : \n-  un évènement documenté (acte, traitement, diagnostic, etc…),  \n-  une modalité d’acquisition, \n-  une région anatomique. ",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmEventCode",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdmEventCode",
      "path" : "xdmEventCode",
      "short" : "XDM EventCode",
      "definition" : "Modèle logique d'un eventCode.\nUn EventCode peut contenir le code représentant : \n-  un évènement documenté (acte, traitement, diagnostic, etc…),  \n-  une modalité d’acquisition, \n-  une région anatomique. "
    },
    {
      "id" : "xdmEventCode.eventCode",
      "path" : "xdmEventCode.eventCode",
      "short" : "Cet attribut peut contenir le code représentant : • un évènement documenté (acte, traitement, diagnostic, etc…),  • une modalité d'acquisition, • une région anatomique.",
      "definition" : "Cet attribut peut contenir le code représentant : • un évènement documenté (acte, traitement, diagnostic, etc…),  • une modalité d'acquisition, • une région anatomique.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
