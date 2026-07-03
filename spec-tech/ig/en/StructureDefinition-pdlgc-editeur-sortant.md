# PDLGC Editeur Sortant - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Editeur Sortant 

 
PDLGC Editeur Sortant 

**Usages:**

* Use this Logical Model: [PDLGC Manifest](StructureDefinition-pdlgc-manifest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgc-editeur-sortant.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgc-editeur-sortant.csv), [Excel](../StructureDefinition-pdlgc-editeur-sortant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-editeur-sortant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-editeur-sortant",
  "version" : "0.1.0",
  "name" : "PDLGCEditeurSortant",
  "title" : "PDLGC Editeur Sortant",
  "status" : "draft",
  "date" : "2026-07-03T08:42:19+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "PDLGC Editeur Sortant",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-editeur-sortant",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-editeur-sortant",
      "path" : "pdlgc-editeur-sortant",
      "short" : "PDLGC Editeur Sortant",
      "definition" : "PDLGC Editeur Sortant"
    },
    {
      "id" : "pdlgc-editeur-sortant.numSiret",
      "path" : "pdlgc-editeur-sortant.numSiret",
      "min" : 1
    },
    {
      "id" : "pdlgc-editeur-sortant.denominationEG",
      "path" : "pdlgc-editeur-sortant.denominationEG",
      "min" : 1
    },
    {
      "id" : "pdlgc-editeur-sortant.contact",
      "path" : "pdlgc-editeur-sortant.contact",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-contact-portabilite"
      }]
    }]
  }
}

```
