# Type de répertoire - Portabilité des Données LGC v0.1.0

## CodeSystem: Type de répertoire 

 
Type de répertoire 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [PDLGCRepoTypeVS](ValueSet-pdlgc-repo-type-vs.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pdlgc-repo-type-cs",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/CodeSystem/pdlgc-repo-type-cs",
  "version" : "0.1.0",
  "name" : "PDLGCRepoTypeCS",
  "title" : "Type de répertoire",
  "status" : "draft",
  "date" : "2026-07-15T16:11:54+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Type de répertoire",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "PATIENT",
    "display" : "Répertoire stockant les données médicales d'un patient"
  },
  {
    "code" : "TRANSVERSE",
    "display" : "Répertoire stockant les données transverses associées à un praticien ou une structure"
  }]
}

```
