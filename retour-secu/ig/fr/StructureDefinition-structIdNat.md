# StructIdNat - Portabilité des Données LGC v0.1.0

## Profil du type de données: StructIdNat 

 
Identification nationale principale d’une structure propre aux SI de l'ANS et au CI-SIS 4. 
L’identification nationale d’une structure est construite selon le tableau dessous : 
* 0 + Identifiant cabinet ADELI
* 1 + N° FINESS 2 + N° SIREN
* 3 + N° SIRET
* 4 + N° RPPS-rang
* Néant + N° technique
 

**Utilisations:**

* Utilise ce/t/te Profil de type primitif: [PDLGC Index](StructureDefinition-pdlgcIndex.md) and [XDM AuthorInstitution](StructureDefinition-xdmAuthorInstitution.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/structIdNat)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Contraintes

Cette structure est dérivée de [string](http://hl7.org/fhir/R4/datatypes.html#string) 

#### Contraintes

Cette structure est dérivée de [string](http://hl7.org/fhir/R4/datatypes.html#string) 

** Résumé **

 **Vue des éléments clés** 

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [string](http://hl7.org/fhir/R4/datatypes.html#string) 

 **Vue d'ensembleView** 

#### Contraintes

Cette structure est dérivée de [string](http://hl7.org/fhir/R4/datatypes.html#string) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-structIdNat.csv), [Excel](../StructureDefinition-structIdNat.xlsx), [Schematron](../StructureDefinition-structIdNat.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "structIdNat",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/structIdNat",
  "version" : "0.1.0",
  "name" : "StructIdNat",
  "title" : "StructIdNat",
  "status" : "draft",
  "date" : "2026-08-28T08:39:27+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Identification nationale principale d’une structure propre aux SI de l'ANS et au CI-SIS 4. \n\nL’identification nationale d’une structure est construite selon le tableau dessous :\n- 0 + Identifiant cabinet ADELI \n- 1 + N° FINESS 2 + N° SIREN \n- 3 + N° SIRET \n- 4 + N° RPPS-rang \n- Néant + N° technique \n",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "primitive-type",
  "abstract" : false,
  "type" : "string",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/string|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "string",
      "path" : "string"
    }]
  }
}

```
