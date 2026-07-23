# PDLGC Manifest Archives - Portabilité des Données LGC v0.1.0

## Modèle logique: PDLGC Manifest Archives 

 
Informations relatives aux répertoires Patient et transverse exportées dans l'archive de portabilité 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/pdlgcManifestArchives)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(3 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(3 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-pdlgcManifestArchives.csv), [Excel](../StructureDefinition-pdlgcManifestArchives.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgcManifestArchives",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcManifestArchives",
  "version" : "0.1.0",
  "name" : "PDLGCManifestArchives",
  "title" : "PDLGC Manifest Archives",
  "status" : "draft",
  "date" : "2026-07-23T16:03:49+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Informations relatives aux répertoires Patient et transverse exportées dans l'archive de portabilité",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcManifestArchives",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgcManifestArchives",
      "path" : "pdlgcManifestArchives",
      "short" : "PDLGC Manifest Archives",
      "definition" : "Informations relatives aux répertoires Patient et transverse exportées dans l'archive de portabilité"
    },
    {
      "id" : "pdlgcManifestArchives.type",
      "path" : "pdlgcManifestArchives.type",
      "short" : "Patient | Transverse",
      "definition" : "Patient | Transverse",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/ValueSet/vs-pdlgc-archive-type|0.1.0"
      }
    },
    {
      "id" : "pdlgcManifestArchives.nom",
      "path" : "pdlgcManifestArchives.nom",
      "short" : "Nom du répertoire",
      "definition" : "Nom du répertoire",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcManifestArchives.patientId",
      "path" : "pdlgcManifestArchives.patientId",
      "short" : "Identifiant du Patient s'il s'agit d'un répertoire Patient",
      "definition" : "Identifiant du Patient s'il s'agit d'un répertoire Patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/patId"
      }]
    },
    {
      "id" : "pdlgcManifestArchives.periodeCouverte",
      "path" : "pdlgcManifestArchives.periodeCouverte",
      "short" : "Période couverte par l'export dans le cas d'un export ciblé",
      "definition" : "Période couverte par l'export dans le cas d'un export ciblé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "pdlgcManifestArchives.metadataHash",
      "path" : "pdlgcManifestArchives.metadataHash",
      "short" : "Hash SHA-256 du fichier Metadata inclus dans le répertoire",
      "definition" : "Hash SHA-256 du fichier Metadata inclus dans le répertoire",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
