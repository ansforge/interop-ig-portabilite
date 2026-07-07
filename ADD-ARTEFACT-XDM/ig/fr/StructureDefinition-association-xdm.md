# Association XDM (LM) - Portabilité des Données LGC v0.1.0

## Modèle logique: Association XDM (LM) 

 
Modèle logique d'une association IHE XDS entre deux objets de l'archive de portabilité. Permet de relier un SubmissionSet ou un DocumentEntry à un autre (remplacement ou transformation). 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Archive XDM (LM)](StructureDefinition-archive-xdm.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/association-xdm)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-association-xdm.csv), [Excel](../StructureDefinition-association-xdm.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "association-xdm",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/association-xdm",
  "version" : "0.1.0",
  "name" : "Association",
  "title" : "Association XDM (LM)",
  "status" : "draft",
  "date" : "2026-07-07T20:41:51+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Modèle logique d'une association IHE XDS entre deux objets de l'archive de portabilité.\nPermet de relier un SubmissionSet ou un DocumentEntry à un autre (remplacement ou transformation).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/association-xdm",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "association-xdm",
      "path" : "association-xdm",
      "short" : "Association XDM (LM)",
      "definition" : "Modèle logique d'une association IHE XDS entre deux objets de l'archive de portabilité.\nPermet de relier un SubmissionSet ou un DocumentEntry à un autre (remplacement ou transformation)."
    },
    {
      "id" : "association-xdm.associationType",
      "path" : "association-xdm.associationType",
      "short" : "Type d'association",
      "definition" : "Type d'association",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/ValueSet/vs-association-type|0.1.0"
      }
    },
    {
      "id" : "association-xdm.sourceObject",
      "path" : "association-xdm.sourceObject",
      "short" : "Identifiant de l'objet source (SubmissionSet ou DocumentEntry)",
      "definition" : "Identifiant de l'objet source (SubmissionSet ou DocumentEntry)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uuid"
      }]
    },
    {
      "id" : "association-xdm.targetObject",
      "path" : "association-xdm.targetObject",
      "short" : "Identifiant de l'objet cible (SubmissionSet ou DocumentEntry)",
      "definition" : "Identifiant de l'objet cible (SubmissionSet ou DocumentEntry)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uuid"
      }]
    }]
  }
}

```
