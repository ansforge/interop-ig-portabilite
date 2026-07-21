# Statut de l'export - Portabilité des Données LGC v0.1.0

## CodeSystem: Statut de l'export 

 
Statut de l'export 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [PDLGCExportStatusVS](ValueSet-pdlgc-export-status-vs.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pdlgc-export-status-cs",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/CodeSystem/pdlgc-export-status-cs",
  "version" : "0.1.0",
  "name" : "PDLGCExportStatusCS",
  "title" : "Statut de l'export",
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
  "description" : "Statut de l'export",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "COMPLETE",
    "display" : "Export complet des données LGC"
  },
  {
    "code" : "PARTIAL",
    "display" : "Export partiel d'une fraction des données LGC"
  },
  {
    "code" : "SAMPLE",
    "display" : "Export d'un échantillon de données pour test d'intégration"
  }]
}

```
