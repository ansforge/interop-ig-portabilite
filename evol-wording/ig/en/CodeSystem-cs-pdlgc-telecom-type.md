# Type de moyen de communication - Portabilité des Données LGC v0.1.0

## CodeSystem: Type de moyen de communication 

 
Type de moyen de communication 

This Code system is referenced in the definition of the following value sets:

* [VS_PDLGC_TelecomType](ValueSet-vs-pdlgc-telecom-type.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-pdlgc-telecom-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/CodeSystem/cs-pdlgc-telecom-type",
  "version" : "0.1.0",
  "name" : "CS_PDLGC_TelecomType",
  "title" : "Type de moyen de communication",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-07T10:10:33+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Type de moyen de communication",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "TEL",
    "display" : "Téléphone"
  },
  {
    "code" : "EMAIL",
    "display" : "Email"
  },
  {
    "code" : "FAX",
    "display" : "Fax"
  }]
}

```
