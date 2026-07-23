# XDM ActorXDS - Portabilité des Données LGC v0.1.0

## Modèle logique: XDM ActorXDS 

 
Cet attribut représente un acteur (humain ou système) ayant contribué au document. Pour les documents d’expression personnelle du patient, cette métadonnée fait référence au patient. 
XCN de HL7 v2.5 

**Utilisations:**

* Dérivé de ce Modèle logique: [XDM ActorPatient](StructureDefinition-xdm-actor-patient.md), [XDM ActorPS](StructureDefinition-xdm-actor-ps.md), [XDM ActorSNR](StructureDefinition-xdm-actor-snr.md) and [XDM ActorSystem](StructureDefinition-xdm-actor-system.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/xdm-actor-xds)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(8 éléments obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(8 éléments obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 

Autres représentations du profil : [CSV](../StructureDefinition-xdm-actor-xds.csv), [Excel](../StructureDefinition-xdm-actor-xds.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdm-actor-xds",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-xds",
  "version" : "0.1.0",
  "name" : "XDMActorXDS",
  "title" : "XDM ActorXDS",
  "status" : "draft",
  "date" : "2026-07-23T08:53:51+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Cet attribut représente un acteur (humain ou système) ayant contribué au document. Pour les documents d’expression personnelle du patient, cette métadonnée fait référence au patient. \n\nXCN de HL7 v2.5",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ActorXDSCDA",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "ActorXDSCDA",
    "comment" : "Mapping CDA"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-xds",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdm-actor-xds",
      "path" : "xdm-actor-xds",
      "short" : "XDM ActorXDS",
      "definition" : "Cet attribut représente un acteur (humain ou système) ayant contribué au document. Pour les documents d’expression personnelle du patient, cette métadonnée fait référence au patient. \n\nXCN de HL7 v2.5",
      "mapping" : [{
        "identity" : "ActorXDSCDA",
        "map" : "ActorXDS"
      }]
    },
    {
      "id" : "xdm-actor-xds.XCN1",
      "path" : "xdm-actor-xds.XCN1",
      "short" : "Identifiant de l'acteur",
      "definition" : "Identifiant de l'acteur",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-identifiant"
      }],
      "mapping" : [{
        "identity" : "ActorXDSCDA",
        "map" : "author/assignedAuthor/id@extension"
      }]
    },
    {
      "id" : "xdm-actor-xds.XCN2",
      "path" : "xdm-actor-xds.XCN2",
      "short" : "Nom d'exercice du professionnel, nom du patient, nom du système.",
      "definition" : "Nom d'exercice du professionnel, nom du patient, nom du système.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ActorXDSCDA",
        "map" : "author/assignedAuthor/assignedPerson/name/family"
      }]
    },
    {
      "id" : "xdm-actor-xds.XCN3",
      "path" : "xdm-actor-xds.XCN3",
      "short" : "Prénom usuel de la personne (par défaut le premier prénom), nom du modèle pour les dispositifs ou dénomination pour les autres systèmes.",
      "definition" : "Prénom usuel de la personne (par défaut le premier prénom), nom du modèle pour les dispositifs ou dénomination pour les autres systèmes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ActorXDSCDA",
        "map" : "author/assignedAuthor/assignedPerson/name/given"
      }]
    },
    {
      "id" : "xdm-actor-xds.XCN9",
      "path" : "xdm-actor-xds.XCN9",
      "short" : "Autorité d’affectation",
      "definition" : "Autorité d’affectation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "mapping" : [{
        "identity" : "ActorXDSCDA",
        "map" : "NA"
      }]
    },
    {
      "id" : "xdm-actor-xds.XCN9.composant1",
      "path" : "xdm-actor-xds.XCN9.composant1",
      "short" : "Vide, pas de valeur",
      "definition" : "Vide, pas de valeur",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ActorXDSCDA",
        "map" : "NA"
      }]
    },
    {
      "id" : "xdm-actor-xds.XCN9.composant2",
      "path" : "xdm-actor-xds.XCN9.composant2",
      "short" : "Valeur de Universal ID",
      "definition" : "Valeur de Universal ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ActorXDSCDA",
        "map" : "author/assignedAuthor/id@root"
      }]
    },
    {
      "id" : "xdm-actor-xds.XCN9.composant3",
      "path" : "xdm-actor-xds.XCN9.composant3",
      "short" : "Valeur de Universal ID type (ID)",
      "definition" : "Valeur de Universal ID type (ID)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ActorXDSCDA",
        "map" : "NA"
      }]
    },
    {
      "id" : "xdm-actor-xds.XCN10",
      "path" : "xdm-actor-xds.XCN10",
      "short" : "Type de nom : Valeur en fonction de l’auteur :  D, pour les personnes physiques, -U, pour les systèmes.",
      "definition" : "Type de nom : Valeur en fonction de l’auteur :  D, pour les personnes physiques, -U, pour les systèmes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ActorXDSCDA",
        "map" : "NA"
      }]
    },
    {
      "id" : "xdm-actor-xds.XCN13",
      "path" : "xdm-actor-xds.XCN13",
      "short" : "Type d’identifiant",
      "definition" : "Type d’identifiant",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ActorXDSCDA",
        "map" : "Valeur ne provenant pas de l’en-tête CDA"
      }]
    }]
  }
}

```
