# SNR - Portabilité des Données LGC v0.1.0

## Logical Model: SNR 

 
Identifiant interne de l’instance de la solution ayant produit le document au format OID 

**Usages:**

* Use this Logical Model: [XDM ActorSNR](StructureDefinition-xdm-actor-snr.md) and [XDM Identifiant](StructureDefinition-xdm-identifiant.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-snr.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-snr.csv), [Excel](../StructureDefinition-snr.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "snr",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/snr",
  "version" : "0.1.0",
  "name" : "SNR",
  "title" : "SNR",
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
  "description" : "Identifiant interne de l’instance de la solution ayant produit le document au format OID ",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/snr",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "snr",
      "path" : "snr",
      "short" : "SNR",
      "definition" : "Identifiant interne de l’instance de la solution ayant produit le document au format OID "
    },
    {
      "id" : "snr.SNR",
      "path" : "snr.SNR",
      "short" : "SNR",
      "definition" : "SNR",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
