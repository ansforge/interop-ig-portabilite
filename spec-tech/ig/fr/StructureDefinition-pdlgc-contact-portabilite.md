# PDLGC Contact Portabilite - Portabilité des Données LGC v0.1.0

## Modèle logique: PDLGC Contact Portabilite 

 
PDLGC Contact Portabilite 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [PDLGC Fournisseur Sortant](StructureDefinition-pdlgc-fournisseur-sortant.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/pdlgc-contact-portabilite)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-pdlgc-contact-portabilite.csv), [Excel](../StructureDefinition-pdlgc-contact-portabilite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-contact-portabilite",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-contact-portabilite",
  "version" : "0.1.0",
  "name" : "PDLGCContactPortabilite",
  "title" : "PDLGC Contact Portabilite",
  "status" : "draft",
  "date" : "2026-07-16T21:31:30+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-contact-portabilite",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-contact-portabilite",
      "path" : "pdlgc-contact-portabilite",
      "short" : "PDLGC Contact Portabilite",
      "definition" : "PDLGC Contact Portabilite"
    },
    {
      "id" : "pdlgc-contact-portabilite.nom",
      "path" : "pdlgc-contact-portabilite.nom",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-contact-portabilite.telecommunication",
      "path" : "pdlgc-contact-portabilite.telecommunication",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
