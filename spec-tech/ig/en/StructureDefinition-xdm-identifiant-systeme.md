# XDM IdentifiantSysteme - Portabilité des Données LGC v0.1.0

## Logical Model: XDM IdentifiantSysteme 

 
Identification d'un systeme 
L’identification du systeme est construite selon le tableau dessous : 
* 1 + Identifiant cabinet ADELI/Identifiant interne du système dans la structure
* 3 + FINESS/Identifiant interne du système dans la structure
* 4 + SIREN/Identifiant interne du système dans la structure
* 5 + SIRET/Identifiant interne du système dans la structure
* 6 + Identifiant cabinet RPPS/Identifiant interne du système dans la structure
 

**Usages:**

* Use this Logical Model: [XDM ActorSystem](StructureDefinition-xdm-actor-system.md) and [XDM Identifiant](StructureDefinition-xdm-identifiant.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-xdm-identifiant-systeme.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-xdm-identifiant-systeme.csv), [Excel](../StructureDefinition-xdm-identifiant-systeme.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdm-identifiant-systeme",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-identifiant-systeme",
  "version" : "0.1.0",
  "name" : "XDMIdentifiantSysteme",
  "title" : "XDM IdentifiantSysteme",
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
  "description" : "Identification d'un systeme\n\nL’identification du systeme  est construite selon le tableau dessous :\n- 1 + Identifiant cabinet ADELI/Identifiant interne du système dans la structure \n- 3 + FINESS/Identifiant interne du système dans la structure  \n- 4 + SIREN/Identifiant interne du système dans la structure \n- 5 + SIRET/Identifiant interne du système dans la structure \n- 6 + Identifiant cabinet RPPS/Identifiant interne du système dans la structure \n",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-identifiant-systeme",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdm-identifiant-systeme",
      "path" : "xdm-identifiant-systeme",
      "short" : "XDM IdentifiantSysteme",
      "definition" : "Identification d'un systeme\n\nL’identification du systeme  est construite selon le tableau dessous :\n- 1 + Identifiant cabinet ADELI/Identifiant interne du système dans la structure \n- 3 + FINESS/Identifiant interne du système dans la structure  \n- 4 + SIREN/Identifiant interne du système dans la structure \n- 5 + SIRET/Identifiant interne du système dans la structure \n- 6 + Identifiant cabinet RPPS/Identifiant interne du système dans la structure \n"
    },
    {
      "id" : "xdm-identifiant-systeme.XDMIdentifiantSysteme",
      "path" : "xdm-identifiant-systeme.XDMIdentifiantSysteme",
      "short" : "XDMIdentifiantSysteme",
      "definition" : "XDMIdentifiantSysteme",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
