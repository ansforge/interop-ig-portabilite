# Type d'export de données LGC - Portabilité des Données LGC v0.1.0

## CodeSystem: Type d'export de données LGC 

 
Type d'export de données LGC 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [PDLGCExportTypeVS](ValueSet-pdlgc-export-type-vs.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pdlgc-type-export-cs",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/CodeSystem/pdlgc-type-export-cs",
  "version" : "0.1.0",
  "name" : "PDLGCExportTypeCS",
  "title" : "Type d'export de données LGC",
  "status" : "draft",
  "date" : "2026-07-16T08:46:36+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Type d'export de données LGC",
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
    "code" : "UNITAIRE",
    "display" : "Export unitaire d'un unique dossier patient"
  },
  {
    "code" : "CIBLE",
    "display" : "Export d'un sélection de la patientèle répondant à un filtre par professionnel de santé ou par période"
  },
  {
    "code" : "MASSIF",
    "display" : "Export Massif de l'intégralité de la patientèle"
  }]
}

```
