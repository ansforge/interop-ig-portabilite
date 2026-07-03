# Type d'association XDS (VS) - Portabilité des Données LGC v0.1.0

## ValueSet: Type d'association XDS (VS) 

 
Valeurs autorisées pour le type d'association entre objets XDS. 

 **References** 

* [Association XDM (LM)](StructureDefinition-association-xdm.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-association-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/ValueSet/vs-association-type",
  "version" : "0.1.0",
  "name" : "VS_AssociationType",
  "title" : "Type d'association XDS (VS)",
  "status" : "draft",
  "date" : "2026-07-03T13:57:35+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Valeurs autorisées pour le type d'association entre objets XDS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/CodeSystem/cs-association-type",
      "version" : "0.1.0"
    }]
  }
}

```
