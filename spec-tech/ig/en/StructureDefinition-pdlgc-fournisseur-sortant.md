# PDLGC Fournisseur Sortant - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Fournisseur Sortant 

 
PDLGC Fournisseur Sortant 

**Usages:**

* Use this Logical Model: [PDLGC Manifest](StructureDefinition-pdlgc-manifest.md) and [PDLGC Readme](StructureDefinition-pdlgc-readme.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgc-fournisseur-sortant.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgc-fournisseur-sortant.csv), [Excel](../StructureDefinition-pdlgc-fournisseur-sortant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-fournisseur-sortant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-fournisseur-sortant",
  "version" : "0.1.0",
  "name" : "PDLGCFournisseurSortant",
  "title" : "PDLGC Fournisseur Sortant",
  "status" : "draft",
  "date" : "2026-07-19T17:20:25+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-fournisseur-sortant",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-fournisseur-sortant",
      "path" : "pdlgc-fournisseur-sortant",
      "short" : "PDLGC Fournisseur Sortant",
      "definition" : "PDLGC Fournisseur Sortant"
    },
    {
      "id" : "pdlgc-fournisseur-sortant.idNatStruct",
      "path" : "pdlgc-fournisseur-sortant.idNatStruct",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-fournisseur-sortant.raisonSociale",
      "path" : "pdlgc-fournisseur-sortant.raisonSociale",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-fournisseur-sortant.contact",
      "path" : "pdlgc-fournisseur-sortant.contact",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-contact-portabilite"
      }]
    },
    {
      "id" : "pdlgc-fournisseur-sortant.LGCSystem",
      "path" : "pdlgc-fournisseur-sortant.LGCSystem",
      "short" : "Informations relatives au LGC",
      "definition" : "Informations relatives au LGC",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-system"
      }],
      "mustSupport" : true
    }]
  }
}

```
