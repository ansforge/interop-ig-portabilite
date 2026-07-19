# XDM EventCode - Portabilité des Données LGC v0.1.0

## Modèle logique: XDM EventCode 

 
Modèle logique d'un eventCode. Un EventCode peut contenir le code représentant : 
* un évènement documenté (acte, traitement, diagnostic, etc…),
* une modalité d’acquisition,
* une région anatomique.
 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [XDM DocumentEntry](StructureDefinition-xdm-document-entry.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/xdm-event-code)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-xdm-event-code.csv), [Excel](../StructureDefinition-xdm-event-code.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdm-event-code",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-event-code",
  "version" : "0.1.0",
  "name" : "XDMEventCode",
  "title" : "XDM EventCode",
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
  "description" : "Modèle logique d'un eventCode.\nUn EventCode peut contenir le code représentant : \n-  un évènement documenté (acte, traitement, diagnostic, etc…),  \n-  une modalité d’acquisition, \n-  une région anatomique. ",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-event-code",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdm-event-code",
      "path" : "xdm-event-code",
      "short" : "XDM EventCode",
      "definition" : "Modèle logique d'un eventCode.\nUn EventCode peut contenir le code représentant : \n-  un évènement documenté (acte, traitement, diagnostic, etc…),  \n-  une modalité d’acquisition, \n-  une région anatomique. "
    },
    {
      "id" : "xdm-event-code.eventCode",
      "path" : "xdm-event-code.eventCode",
      "short" : "Cet attribut peut contenir le code représentant : • un évènement documenté (acte, traitement, diagnostic, etc…),  • une modalité d'acquisition, • une région anatomique. ",
      "definition" : "Cet attribut peut contenir le code représentant : • un évènement documenté (acte, traitement, diagnostic, etc…),  • une modalité d'acquisition, • une région anatomique. ",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
