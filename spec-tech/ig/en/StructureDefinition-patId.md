# Identifiant Patient - Portabilité des Données LGC v0.1.0

## Logical Model: Identifiant Patient 

 
Identifiant du patient tel que connu par les interlocuteurs prenant part à l'échange. Le matricule INS (NIR ou NIA) du patient doit être utilisé en priorité. À défaut de disponibilité de l'INS, un autre identifiant (ex: IPP du système émetteur) peut être utilisé. 

**Usages:**

* Use this Logical Model: [PDLGC Manifest Archives](StructureDefinition-pdlgcManifestArchives.md), [XDM ActorPatient](StructureDefinition-xdmActorPatient.md) and [XDM Identifiant](StructureDefinition-xdmIdentifiant.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-patId.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-patId.csv), [Excel](../StructureDefinition-patId.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patId",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/patId",
  "version" : "0.1.0",
  "name" : "PatId",
  "title" : "Identifiant Patient",
  "status" : "draft",
  "date" : "2026-07-23T16:11:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Identifiant du patient tel que connu par les interlocuteurs prenant part à l'échange. Le matricule INS (NIR ou NIA) du patient doit être utilisé en priorité. À défaut de disponibilité de l'INS, un autre identifiant (ex: IPP du système émetteur) peut être utilisé.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/patId",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "patId",
      "path" : "patId",
      "short" : "Identifiant Patient",
      "definition" : "Identifiant du patient tel que connu par les interlocuteurs prenant part à l'échange. Le matricule INS (NIR ou NIA) du patient doit être utilisé en priorité. À défaut de disponibilité de l'INS, un autre identifiant (ex: IPP du système émetteur) peut être utilisé."
    },
    {
      "id" : "patId.patId",
      "path" : "patId.patId",
      "short" : "Identifiant du patient. L'INS du patient tel que défini dans le cadre juridique, est à utiliser prioritairement. À défaut, un autre identifiant (ex : IPP du système émetteur) peut être utilisé.",
      "definition" : "Identifiant du patient. L'INS du patient tel que défini dans le cadre juridique, est à utiliser prioritairement. À défaut, un autre identifiant (ex : IPP du système émetteur) peut être utilisé.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
