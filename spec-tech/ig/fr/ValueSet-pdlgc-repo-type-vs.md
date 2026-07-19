# PDLGC Type de répertoire - Portabilité des Données LGC v0.1.0

## ValueSet: PDLGC Type de répertoire 

 
PDLGC Type de répertoire 

 **References** 

* [PDLGC Manifest](StructureDefinition-pdlgc-manifest.md)
* [PDLGC Manifest Archives](StructureDefinition-pdlgc-manifest-archives.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "pdlgc-repo-type-vs",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/ValueSet/pdlgc-repo-type-vs",
  "version" : "0.1.0",
  "name" : "PDLGCRepoTypeVS",
  "title" : "PDLGC Type de répertoire",
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
  "description" : "PDLGC Type de répertoire",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/CodeSystem/pdlgc-repo-type-cs",
      "version" : "0.1.0"
    }]
  }
}

```
