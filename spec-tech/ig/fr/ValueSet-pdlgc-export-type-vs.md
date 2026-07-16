# PDLGC Type d'Export - Portabilité des Données LGC v0.1.0

## ValueSet: PDLGC Type d'Export 

 
PDLGC Type d'Export 

 **References** 

* [PDLGC Manifest](StructureDefinition-pdlgc-manifest.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "pdlgc-export-type-vs",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/ValueSet/pdlgc-export-type-vs",
  "version" : "0.1.0",
  "name" : "PDLGCExportTypeVS",
  "title" : "PDLGC Type d'Export",
  "status" : "draft",
  "date" : "2026-07-16T08:21:58+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "PDLGC Type d'Export",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/CodeSystem/pdlgc-type-export-cs",
      "version" : "0.1.0"
    }]
  }
}

```
