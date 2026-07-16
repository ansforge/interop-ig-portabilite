# PDLGC Archive Portabilite - Portabilité des Données LGC v0.1.0

## Modèle logique: PDLGC Archive Portabilite 

 
L'archive de Portabilité est un conteneur structuré, regroupant l'ensemble des documents et données LGC exportées ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire. Convention de nommage : PAAAAAMMJJThhmmss.ZIP, avec PA = préfixe, AAAAMMJJThhmmss = horodatage 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/pdlgc-archive-portabilite)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(5 éléments obligatoire(s) imbriqué(s))
 Must-Support : 6 éléments

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(5 éléments obligatoire(s) imbriqué(s))
 Must-Support : 6 éléments

 

Autres représentations du profil : [CSV](../StructureDefinition-pdlgc-archive-portabilite.csv), [Excel](../StructureDefinition-pdlgc-archive-portabilite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-archive-portabilite",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-archive-portabilite",
  "version" : "0.1.0",
  "name" : "PDLGCArchivePortabilite",
  "title" : "PDLGC Archive Portabilite",
  "status" : "draft",
  "date" : "2026-07-16T10:52:32+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "L'archive de Portabilité est un conteneur structuré, regroupant l'ensemble des documents et données LGC exportées ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire. Convention de nommage : PAAAAAMMJJThhmmss.ZIP, avec PA = préfixe, AAAAMMJJThhmmss = horodatage",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-archive-portabilite",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-archive-portabilite",
      "path" : "pdlgc-archive-portabilite",
      "short" : "L'archive de Portabilité est un conteneur structuré, regroupant l'ensemble des documents et données LGC exportées ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire.",
      "definition" : "L'archive de Portabilité est un conteneur structuré, regroupant l'ensemble des documents et données LGC exportées ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire.",
      "comment" : "Transaction ExportArchivePortabilite"
    },
    {
      "id" : "pdlgc-archive-portabilite.README",
      "path" : "pdlgc-archive-portabilite.README",
      "short" : "Informations éditoriales et instructions d'exploitation de l'archive",
      "definition" : "Informations éditoriales et instructions d'exploitation de l'archive",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-readme"
      }],
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-archive-portabilite.MANIFEST",
      "path" : "pdlgc-archive-portabilite.MANIFEST",
      "short" : "Rapport de volumétrie et d'intégrité",
      "definition" : "Rapport de volumétrie et d'intégrité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-manifest"
      }],
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-archive-portabilite.SIGN",
      "path" : "pdlgc-archive-portabilite.SIGN",
      "short" : "signature XAdES de l'archive attestant de l'imputabilité et l'intégrité des données",
      "definition" : "signature XAdES de l'archive attestant de l'imputabilité et l'intégrité des données",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-signature"
      }],
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-archive-portabilite.DOCUMENTATION",
      "path" : "pdlgc-archive-portabilite.DOCUMENTATION",
      "short" : "répertoire de stockage de la documentation d'export (dictionnaire de données, mapping, schémas techniques, jeu d'échantillons,...)",
      "definition" : "répertoire de stockage de la documentation d'export (dictionnaire de données, mapping, schémas techniques, jeu d'échantillons,...)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-documentation"
      }],
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-archive-portabilite.TRANSVERSE",
      "path" : "pdlgc-archive-portabilite.TRANSVERSE",
      "short" : "Archive de données transverses liées au praticien ou au cabinet (agenda, données de comptabilité, logs d'accès,...)",
      "definition" : "Archive de données transverses liées au praticien ou au cabinet (agenda, données de comptabilité, logs d'accès,...)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-archive-transverse"
      }],
      "mustSupport" : true
    },
    {
      "id" : "pdlgc-archive-portabilite.PATNNNNN",
      "path" : "pdlgc-archive-portabilite.PATNNNNN",
      "short" : "Archive de données médicales liées au patient, ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM",
      "definition" : "Archive de données médicales liées au patient, ou NNNNN est incrémenté à partir de 00001. Chaque patient est représenté par une archive distincte conforme au profil IHE_XDM",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-archive-patient"
      }],
      "mustSupport" : true
    }]
  }
}

```
