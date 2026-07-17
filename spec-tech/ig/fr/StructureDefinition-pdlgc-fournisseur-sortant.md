# PDLGC Fournisseur Sortant - Portabilité des Données LGC v0.1.0

## Modèle logique: PDLGC Fournisseur Sortant 

 
PDLGC Fournisseur Sortant 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [PDLGC Manifest](StructureDefinition-pdlgc-manifest.md) and [PDLGC Readme](StructureDefinition-pdlgc-readme.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/pdlgc-fournisseur-sortant)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [EntiteJuridique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteJuridique.html) 

#### Bindings terminologiques

Cette structure est dérivée de [EntiteJuridique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteJuridique.html) 

** Résumé **

Obligatoire : 3 éléments(1 élément obligatoire(s) imbriqué(s))
 Must-Support : 3 éléments

 **Vue différentielle** 

Cette structure est dérivée de [EntiteJuridique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteJuridique.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [EntiteJuridique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteJuridique.html) 

** Résumé **

Obligatoire : 3 éléments(1 élément obligatoire(s) imbriqué(s))
 Must-Support : 3 éléments

 

Autres représentations du profil : [CSV](../StructureDefinition-pdlgc-fournisseur-sortant.csv), [Excel](../StructureDefinition-pdlgc-fournisseur-sortant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-fournisseur-sortant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-fournisseur-sortant",
  "version" : "0.1.0",
  "name" : "PDLGCFournisseurSortant",
  "title" : "PDLGC Fournisseur Sortant",
  "status" : "draft",
  "date" : "2026-07-17T14:49:58+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "PDLGC Fournisseur Sortant",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-fournisseur-sortant",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-fournisseur-sortant",
      "path" : "pdlgc-fournisseur-sortant",
      "short" : "PDLGC Fournisseur Sortant",
      "definition" : "PDLGC Fournisseur Sortant"
    },
    {
      "id" : "pdlgc-fournisseur-sortant.idNatStruct",
      "path" : "pdlgc-fournisseur-sortant.idNatStruct",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-fournisseur-sortant.raisonSociale",
      "path" : "pdlgc-fournisseur-sortant.raisonSociale",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-fournisseur-sortant.contact",
      "path" : "pdlgc-fournisseur-sortant.contact",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-contact-portabilite"
      }]
    },
    {
      "id" : "pdlgc-fournisseur-sortant.LGCSystem",
      "path" : "pdlgc-fournisseur-sortant.LGCSystem",
      "short" : "Informations relatives au LGC",
      "definition" : "Informations relatives au LGC",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-system"
      }],
      "mustSupport" : true
    }]
  }
}

```
