# PDLGC Documentation - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Documentation 

 
Documentation d'export permettant au fournisseur destinataire d'intégrer les données LGC du fournisseur sortant 

**Usages:**

* Use this Logical Model: [PDLGC Archive Portabilite](StructureDefinition-pdlgcArchivePortabilite.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgcDocumentation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgcDocumentation.csv), [Excel](../StructureDefinition-pdlgcDocumentation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgcDocumentation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcDocumentation",
  "version" : "0.1.0",
  "name" : "PDLGCDocumentation",
  "title" : "PDLGC Documentation",
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
  "description" : "Documentation d'export permettant au fournisseur destinataire d'intégrer les données LGC du fournisseur sortant",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcDocumentation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgcDocumentation",
      "path" : "pdlgcDocumentation",
      "short" : "Documentation d'export permettant au fournisseur destinataire d'intégrer les données LGC du fournisseur sortant.",
      "definition" : "Documentation d'export permettant au fournisseur destinataire d'intégrer les données LGC du fournisseur sortant.",
      "comment" : "Transaction ExportArchivePortabilite."
    },
    {
      "id" : "pdlgcDocumentation.documentation",
      "path" : "pdlgcDocumentation.documentation",
      "short" : "Documents permettant au fournisseur destinataire d'interpréter et d'intégrer les données (dictionnaire de données, mapping, dictionnaire de terminologies propriétaures, jeu d'échantillons).",
      "definition" : "Documents permettant au fournisseur destinataire d'interpréter et d'intégrer les données (dictionnaire de données, mapping, dictionnaire de terminologies propriétaures, jeu d'échantillons).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Document"
      }]
    }]
  }
}

```
