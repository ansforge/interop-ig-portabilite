# PDLGC Index - Portabilité des Données LGC v0.1.0

## Modèle logique: PDLGC Index 

 
L'INDEX.HTM est renferme des informations éditoriales et est conforme aux spécifications XHTML et Echanges de Documents de santé. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [PDLGC Archive Patient](StructureDefinition-pdlgc-archive-patient.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/pdlgc-index)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(3 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [Identifier (http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier|5.3.0)](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-elementdefinition-identifier.html)

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(3 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [Identifier (http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier|5.3.0)](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-elementdefinition-identifier.html)

 

Autres représentations du profil : [CSV](../StructureDefinition-pdlgc-index.csv), [Excel](../StructureDefinition-pdlgc-index.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-index",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-index",
  "version" : "0.1.0",
  "name" : "PDLGCIndex",
  "title" : "PDLGC Index",
  "status" : "draft",
  "date" : "2026-07-22T17:16:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "L'INDEX.HTM est renferme des informations éditoriales et est conforme aux spécifications XHTML et Echanges de Documents de santé.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-index",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-index",
      "path" : "pdlgc-index",
      "short" : "PDLGC Index",
      "definition" : "L'INDEX.HTM est renferme des informations éditoriales et est conforme aux spécifications XHTML et Echanges de Documents de santé."
    },
    {
      "id" : "pdlgc-index.struct-idNat",
      "path" : "pdlgc-index.struct_idNat",
      "short" : "Identification nationale de l'Entité juridique initiée pour les besoins du SI-CPS. Cette identification est obtenue par la concaténation du type d'identifiant national de structure (provenant de la nomenclature CodeSystem-TRE-G07-TypeIdentifiantStructure) et de l'identifiant de la structure:** 1 + N° FINESS (entité juridique et entité géographique indéterminées);** 2 + N° Siren.Cas particulier:La notion d’identifiant d'entité juridique n'a pas de sens métier pour un cabinet individuel ou un cabinet de groupe identifié par un RPPS-Rang ou un ADELI-rang (cf. Attribut IdentifiantEG de la classe EntiteGeographique). Si un cas d'usage nécessite d'appliquer la notion générique d'entité juridique et d'entité géographique pour un cabinet individuel ou un cabinet de groupe, alors l'identifiant de l'entité juridique est constitué de la façon suivante: ** pour le cabinet d’un PS ADELI : 0 + IdentifiantEJ;** pour le cabinet d’un PS RPPS : 4 + IdentifiantEJ. Synonyme : Struct_IdNat (CI-SIS).",
      "definition" : "Identification nationale de l'Entité juridique initiée pour les besoins du SI-CPS. Cette identification est obtenue par la concaténation du type d'identifiant national de structure (provenant de la nomenclature CodeSystem-TRE-G07-TypeIdentifiantStructure) et de l'identifiant de la structure:** 1 + N° FINESS (entité juridique et entité géographique indéterminées);** 2 + N° Siren.Cas particulier:La notion d’identifiant d'entité juridique n'a pas de sens métier pour un cabinet individuel ou un cabinet de groupe identifié par un RPPS-Rang ou un ADELI-rang (cf. Attribut IdentifiantEG de la classe EntiteGeographique). Si un cas d'usage nécessite d'appliquer la notion générique d'entité juridique et d'entité géographique pour un cabinet individuel ou un cabinet de groupe, alors l'identifiant de l'entité juridique est constitué de la façon suivante: ** pour le cabinet d’un PS ADELI : 0 + IdentifiantEJ;** pour le cabinet d’un PS RPPS : 4 + IdentifiantEJ. Synonyme : Struct_IdNat (CI-SIS).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier|5.3.0"]
      }]
    },
    {
      "id" : "pdlgc-index.raisonSociale",
      "path" : "pdlgc-index.raisonSociale",
      "short" : "La raison sociale est le nom de l'entité juridique.Elle figure obligatoirement dans les statuts de l'EJ.Synonyme: Dénomination.",
      "definition" : "La raison sociale est le nom de l'entité juridique.Elle figure obligatoirement dans les statuts de l'EJ.Synonyme: Dénomination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-index.avertissement",
      "path" : "pdlgc-index.avertissement",
      "short" : "avertissement optionnel de l'émetteur concernant la sécurité et la confidentialité.",
      "definition" : "avertissement optionnel de l'émetteur concernant la sécurité et la confidentialité.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-index.lienREADME",
      "path" : "pdlgc-index.lienREADME",
      "short" : "lien vers le fichier README.TXT de l'archive XDM Patient.",
      "definition" : "lien vers le fichier README.TXT de l'archive XDM Patient.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
