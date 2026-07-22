# XDM AuthorSubmissionSet - Portabilité des Données LGC v0.1.0

## Modèle logique: XDM AuthorSubmissionSet 

 
Modèle logique d'un auteur d'un lot de soumission Cette métadonnée représente les personnes physiques et/ou les systèmes auteurs d’un lot de soumission. Constituée des sous-attributs **authorInstitution**, **authorPerson**, **authorRole** et **authorSpecialty**, elle ne porte pas de valeur par elle-même. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [XDM SubmissionSet](StructureDefinition-xdm-submission-set.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/xdm-author-submission-set)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [XDMAuthor](StructureDefinition-xdm-author.md) 

#### Bindings terminologiques

Cette structure est dérivée de [XDMAuthor](StructureDefinition-xdm-author.md) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [XDMAuthor](StructureDefinition-xdm-author.md) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [XDMAuthor](StructureDefinition-xdm-author.md) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-xdm-author-submission-set.csv), [Excel](../StructureDefinition-xdm-author-submission-set.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdm-author-submission-set",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-author-submission-set",
  "version" : "0.1.0",
  "name" : "XDMAuthorSubmissionSet",
  "title" : "XDM AuthorSubmissionSet",
  "status" : "draft",
  "date" : "2026-07-22T08:07:11+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Modèle logique d'un auteur d'un lot de soumission\nCette métadonnée représente les personnes physiques et/ou les systèmes auteurs d’un lot de soumission. \nConstituée des sous-attributs **authorInstitution**, **authorPerson**, **authorRole** et **authorSpecialty**, elle ne porte pas de valeur par elle-même. ",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-author-submission-set",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-author|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdm-author-submission-set",
      "path" : "xdm-author-submission-set",
      "short" : "XDM AuthorSubmissionSet",
      "definition" : "Modèle logique d'un auteur d'un lot de soumission\nCette métadonnée représente les personnes physiques et/ou les systèmes auteurs d’un lot de soumission. \nConstituée des sous-attributs **authorInstitution**, **authorPerson**, **authorRole** et **authorSpecialty**, elle ne porte pas de valeur par elle-même. "
    },
    {
      "id" : "xdm-author-submission-set.institution",
      "path" : "xdm-author-submission-set.institution",
      "short" : "Cette métadonnée représente la structure émettrice du lot de soumission"
    },
    {
      "id" : "xdm-author-submission-set.person[x]",
      "path" : "xdm-author-submission-set.person[x]",
      "short" : "Cette métadonnée représente la personne physique ou le système émetteur du lot de soumission.Pour les documents d’expression personnelle du patient, cette métadonnée fait référence au patient.  "
    },
    {
      "id" : "xdm-author-submission-set.role",
      "path" : "xdm-author-submission-set.role",
      "short" : "ette métadonnée représente le rôle joué par l’auteur vis-à-vis du patient lors de la constitution du lot de soumission, c'est-à-dire à quel titre l’auteur est intervenu vis-à-vis du patient (ex : médecin traitant, Responsable de l'admission, Membre de l'équipe de soins, etc.)."
    }]
  }
}

```
