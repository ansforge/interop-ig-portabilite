# PDLGC FournisseurSortant - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC FournisseurSortant 

 
PDLGC Fournisseur Sortant 

**Usages:**

* Use this Logical Model: [PDLGC Manifest](StructureDefinition-pdlgcManifest.md) and [PDLGC Readme](StructureDefinition-pdlgcReadme.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgcFournisseurSortant.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgcFournisseurSortant.csv), [Excel](../StructureDefinition-pdlgcFournisseurSortant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgcFournisseurSortant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcFournisseurSortant",
  "version" : "0.1.0",
  "name" : "PDLGCFournisseurSortant",
  "title" : "PDLGC FournisseurSortant",
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
  "description" : "PDLGC Fournisseur Sortant",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcFournisseurSortant",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgcFournisseurSortant",
      "path" : "pdlgcFournisseurSortant",
      "short" : "PDLGC FournisseurSortant",
      "definition" : "PDLGC Fournisseur Sortant"
    },
    {
      "id" : "pdlgcFournisseurSortant.idNatStruct",
      "path" : "pdlgcFournisseurSortant.idNatStruct",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "pdlgcFournisseurSortant.raisonSociale",
      "path" : "pdlgcFournisseurSortant.raisonSociale",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "pdlgcFournisseurSortant.contact",
      "path" : "pdlgcFournisseurSortant.contact",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcContactPortabilite"
      }],
      "mustSupport" : true
    },
    {
      "id" : "pdlgcFournisseurSortant.lgcSystem",
      "path" : "pdlgcFournisseurSortant.lgcSystem",
      "short" : "Informations relatives au LGC.",
      "definition" : "Informations relatives au LGC.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcSystem"
      }],
      "mustSupport" : true
    }]
  }
}

```
