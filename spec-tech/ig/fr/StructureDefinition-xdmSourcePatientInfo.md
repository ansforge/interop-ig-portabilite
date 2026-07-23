# XDM SourcePatientInfo - Portabilité des Données LGC v0.1.0

## Modèle logique: XDM SourcePatientInfo 

 
Cette métadonnée contient les traits d’identité du patient concerné par le document, connus par le producteur du document. Les informations présentes dans la métadonnée sourcePatientInfo ne doivent en aucun cas être réutilisées pour calculer un identifiant, ni être mises à jour après la soumission du document. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [XDM DocumentEntry](StructureDefinition-xdmDocumentEntry.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/xdmSourcePatientInfo)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-xdmSourcePatientInfo.csv), [Excel](../StructureDefinition-xdmSourcePatientInfo.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdmSourcePatientInfo",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmSourcePatientInfo",
  "version" : "0.1.0",
  "name" : "XDMSourcePatientInfo",
  "title" : "XDM SourcePatientInfo",
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
  "description" : "Cette métadonnée contient les traits d’identité du patient concerné par le document, connus par le producteur du document. Les informations présentes dans la métadonnée sourcePatientInfo ne doivent en aucun cas être réutilisées pour calculer un identifiant, ni être mises à jour après la soumission du document. \n",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdmSourcePatientInfo",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdmSourcePatientInfo",
      "path" : "xdmSourcePatientInfo",
      "short" : "XDM SourcePatientInfo",
      "definition" : "Cette métadonnée contient les traits d’identité du patient concerné par le document, connus par le producteur du document. Les informations présentes dans la métadonnée sourcePatientInfo ne doivent en aucun cas être réutilisées pour calculer un identifiant, ni être mises à jour après la soumission du document. \n"
    },
    {
      "id" : "xdmSourcePatientInfo.PID3",
      "path" : "xdmSourcePatientInfo.PID3",
      "short" : "Liste des identifiants du patient",
      "definition" : "Liste des identifiants du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "xdmSourcePatientInfo.PID5",
      "path" : "xdmSourcePatientInfo.PID5",
      "short" : "Nom et prénoms du patient",
      "definition" : "Nom et prénoms du patient",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdmSourcePatientInfo.PID7",
      "path" : "xdmSourcePatientInfo.PID7",
      "short" : "Date/heure de naissance du patient",
      "definition" : "Date/heure de naissance du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdmSourcePatientInfo.PID8",
      "path" : "xdmSourcePatientInfo.PID8",
      "short" : "Sexe du patient",
      "definition" : "Sexe du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdmSourcePatientInfo.PID11",
      "path" : "xdmSourcePatientInfo.PID11",
      "short" : "Adresse du patient",
      "definition" : "Adresse du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdmSourcePatientInfo.PID13",
      "path" : "xdmSourcePatientInfo.PID13",
      "short" : "Téléphone de la résidence du patient",
      "definition" : "Téléphone de la résidence du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdmSourcePatientInfo.PID14",
      "path" : "xdmSourcePatientInfo.PID14",
      "short" : "Téléphone professionnel du patient",
      "definition" : "Téléphone professionnel du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdmSourcePatientInfo.PID15",
      "path" : "xdmSourcePatientInfo.PID15",
      "short" : "Langue du patient",
      "definition" : "Langue du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdmSourcePatientInfo.PID16",
      "path" : "xdmSourcePatientInfo.PID16",
      "short" : "Statut marital du patient",
      "definition" : "Statut marital du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdmSourcePatientInfo.PID18",
      "path" : "xdmSourcePatientInfo.PID18",
      "short" : "Numéro de compte du patient",
      "definition" : "Numéro de compte du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "xdmSourcePatientInfo.PID21",
      "path" : "xdmSourcePatientInfo.PID21",
      "short" : "Identifiant de la mère du patient",
      "definition" : "Identifiant de la mère du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
