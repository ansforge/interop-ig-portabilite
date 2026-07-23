# PDLGC Contact Portabilite - Portabilité des Données LGC v0.1.0

## Modèle logique: PDLGC Contact Portabilite 

 
PDLGC Contact Portabilite 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [PDLGC FournisseurSortant](StructureDefinition-pdlgcFournisseurSortant.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/pdlgcContactPortabilite)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Contact](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Contact.html) 

#### Bindings terminologiques

Cette structure est dérivée de [Contact](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Contact.html) 

** Résumé **

Obligatoire : 2 éléments
 Must-Support : 2 éléments

 **Vue différentielle** 

Cette structure est dérivée de [Contact](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Contact.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Contact](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Contact.html) 

** Résumé **

Obligatoire : 2 éléments
 Must-Support : 2 éléments

 

Autres représentations du profil : [CSV](../StructureDefinition-pdlgcContactPortabilite.csv), [Excel](../StructureDefinition-pdlgcContactPortabilite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgcContactPortabilite",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcContactPortabilite",
  "version" : "0.1.0",
  "name" : "PDLGCContactPortabilite",
  "title" : "PDLGC Contact Portabilite",
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
  "description" : "PDLGC Contact Portabilite",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcContactPortabilite",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgcContactPortabilite",
      "path" : "pdlgcContactPortabilite",
      "short" : "PDLGC Contact Portabilite",
      "definition" : "PDLGC Contact Portabilite"
    },
    {
      "id" : "pdlgcContactPortabilite.nom",
      "path" : "pdlgcContactPortabilite.nom",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "pdlgcContactPortabilite.telecommunication",
      "path" : "pdlgcContactPortabilite.telecommunication",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
