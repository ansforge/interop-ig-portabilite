# XDM IdentifiantSysteme - Portabilité des Données LGC v0.1.0

## Modèle logique: XDM IdentifiantSysteme 

 
Identification d'un systeme 
L’identification du systeme est construite selon le tableau dessous : 
* 1 + Identifiant cabinet ADELI/Identifiant interne du système dans la structure
* 3 + FINESS/Identifiant interne du système dans la structure
* 4 + SIREN/Identifiant interne du système dans la structure
* 5 + SIRET/Identifiant interne du système dans la structure
* 6 + Identifiant cabinet RPPS/Identifiant interne du système dans la structure
 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [XDM ActorSystem](StructureDefinition-xdm-actor-system.md) and [XDM Identifiant](StructureDefinition-xdm-identifiant.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/xdm-identifiant-systeme)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-xdm-identifiant-systeme.csv), [Excel](../StructureDefinition-xdm-identifiant-systeme.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdm-identifiant-systeme",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-identifiant-systeme",
  "version" : "0.1.0",
  "name" : "XDMIdentifiantSysteme",
  "title" : "XDM IdentifiantSysteme",
  "status" : "draft",
  "date" : "2026-07-22T10:39:39+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Identification d'un systeme\n\nL’identification du systeme  est construite selon le tableau dessous :\n- 1 + Identifiant cabinet ADELI/Identifiant interne du système dans la structure \n- 3 + FINESS/Identifiant interne du système dans la structure  \n- 4 + SIREN/Identifiant interne du système dans la structure \n- 5 + SIRET/Identifiant interne du système dans la structure \n- 6 + Identifiant cabinet RPPS/Identifiant interne du système dans la structure \n",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-identifiant-systeme",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdm-identifiant-systeme",
      "path" : "xdm-identifiant-systeme",
      "short" : "XDM IdentifiantSysteme",
      "definition" : "Identification d'un systeme\n\nL’identification du systeme  est construite selon le tableau dessous :\n- 1 + Identifiant cabinet ADELI/Identifiant interne du système dans la structure \n- 3 + FINESS/Identifiant interne du système dans la structure  \n- 4 + SIREN/Identifiant interne du système dans la structure \n- 5 + SIRET/Identifiant interne du système dans la structure \n- 6 + Identifiant cabinet RPPS/Identifiant interne du système dans la structure \n"
    },
    {
      "id" : "xdm-identifiant-systeme.XDMIdentifiantSysteme",
      "path" : "xdm-identifiant-systeme.XDMIdentifiantSysteme",
      "short" : "XDMIdentifiantSysteme",
      "definition" : "XDMIdentifiantSysteme",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
