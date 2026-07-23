# PDLGC Contact Portabilite - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Contact Portabilite 

 
PDLGC Contact Portabilite 

**Usages:**

* Use this Logical Model: [PDLGC FournisseurSortant](StructureDefinition-pdlgcFournisseurSortant.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgcContactPortabilite.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgcContactPortabilite.csv), [Excel](../StructureDefinition-pdlgcContactPortabilite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgcContactPortabilite",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcContactPortabilite",
  "version" : "0.1.0",
  "name" : "PDLGCContactPortabilite",
  "title" : "PDLGC Contact Portabilite",
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
  "description" : "PDLGC Contact Portabilite",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcContactPortabilite",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgcContactPortabilite",
      "path" : "pdlgcContactPortabilite",
      "short" : "PDLGC Contact Portabilite",
      "definition" : "PDLGC Contact Portabilite"
    },
    {
      "id" : "pdlgcContactPortabilite.nom",
      "path" : "pdlgcContactPortabilite.nom",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "pdlgcContactPortabilite.telecommunication",
      "path" : "pdlgcContactPortabilite.telecommunication",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
