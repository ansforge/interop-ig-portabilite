# PDLGC Statut de l'export - Portabilité des Données LGC v0.1.0

## ValueSet: PDLGC Statut de l'export 

 
PDLGC Statut de l'export 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "pdlgc-export-status-vs",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/ValueSet/pdlgc-export-status-vs",
  "version" : "0.1.0",
  "name" : "PDLGCExportStatusVS",
  "title" : "PDLGC Statut de l'export",
  "status" : "draft",
  "date" : "2026-07-21T16:53:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "PDLGC Statut de l'export",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/CodeSystem/pdlgc-export-status-cs",
      "version" : "0.1.0"
    }]
  }
}

```
