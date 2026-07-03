# PDLGC Editeur Sortant - Portabilité des Données LGC v0.1.0

## Modèle logique: PDLGC Editeur Sortant 

 
PDLGC Editeur Sortant 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [PDLGC Manifest](StructureDefinition-pdlgc-manifest.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/pdlgc-editeur-sortant)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [EntiteGeographique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteGeographique.html) 

#### Bindings terminologiques

Cette structure est dérivée de [EntiteGeographique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteGeographique.html) 

** Résumé **

Obligatoire : 3 éléments

 **Vue différentielle** 

Cette structure est dérivée de [EntiteGeographique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteGeographique.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [EntiteGeographique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteGeographique.html) 

** Résumé **

Obligatoire : 3 éléments

 

Autres représentations du profil : [CSV](../StructureDefinition-pdlgc-editeur-sortant.csv), [Excel](../StructureDefinition-pdlgc-editeur-sortant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-editeur-sortant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-editeur-sortant",
  "version" : "0.1.0",
  "name" : "PDLGCEditeurSortant",
  "title" : "PDLGC Editeur Sortant",
  "status" : "draft",
  "date" : "2026-07-03T08:42:19+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "PDLGC Editeur Sortant",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-editeur-sortant",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-editeur-sortant",
      "path" : "pdlgc-editeur-sortant",
      "short" : "PDLGC Editeur Sortant",
      "definition" : "PDLGC Editeur Sortant"
    },
    {
      "id" : "pdlgc-editeur-sortant.numSiret",
      "path" : "pdlgc-editeur-sortant.numSiret",
      "min" : 1
    },
    {
      "id" : "pdlgc-editeur-sortant.denominationEG",
      "path" : "pdlgc-editeur-sortant.denominationEG",
      "min" : 1
    },
    {
      "id" : "pdlgc-editeur-sortant.contact",
      "path" : "pdlgc-editeur-sortant.contact",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-contact-portabilite"
      }]
    }]
  }
}

```
