# PDLGC Manifest Archives - Portabilité des Données LGC v0.1.0

## Modèle logique: PDLGC Manifest Archives 

 
Informations relatives aux répertoires Patient et transverse exportées dans l'archive de portabilité 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/pdlgc-manifest-archives)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-pdlgc-manifest-archives.csv), [Excel](../StructureDefinition-pdlgc-manifest-archives.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-manifest-archives",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-manifest-archives",
  "version" : "0.1.0",
  "name" : "PDLGCManifestArchives",
  "title" : "PDLGC Manifest Archives",
  "status" : "draft",
  "date" : "2026-07-22T17:16:50+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-manifest-archives",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-manifest-archives",
      "path" : "pdlgc-manifest-archives",
      "short" : "PDLGC Manifest Archives",
      "definition" : "Informations relatives aux répertoires Patient et transverse exportées dans l'archive de portabilité"
    },
    {
      "id" : "pdlgc-manifest-archives.type",
      "path" : "pdlgc-manifest-archives.type",
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
      "id" : "pdlgc-manifest-archives.nom",
      "path" : "pdlgc-manifest-archives.nom",
      "short" : "Nom du répertoire",
      "definition" : "Nom du répertoire",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-manifest-archives.patientId",
      "path" : "pdlgc-manifest-archives.patientId",
      "short" : "Identifiant du Patient s'il s'agit d'un répertoire Patient",
      "definition" : "Identifiant du Patient s'il s'agit d'un répertoire Patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-manifest-archives.periodeCouverte",
      "path" : "pdlgc-manifest-archives.periodeCouverte",
      "short" : "Période couverte par l'export dans le cas d'un export ciblé",
      "definition" : "Période couverte par l'export dans le cas d'un export ciblé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "pdlgc-manifest-archives.metadataHash",
      "path" : "pdlgc-manifest-archives.metadataHash",
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
