# XDM AuthorSubmissionSet - Portabilité des Données LGC v0.1.0

## Logical Model: XDM AuthorSubmissionSet 

 
Modèle logique d'un auteur d'un lot de soumission Cette métadonnée représente les personnes physiques et/ou les systèmes auteurs d’un lot de soumission. Constituée des sous-attributs **authorInstitution**, **authorPerson**, **authorRole** et **authorSpecialty**, elle ne porte pas de valeur par elle-même. 

**Usages:**

* Use this Logical Model: [XDM SubmissionSet](StructureDefinition-xdm-submission-set.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-xdm-author-submission-set.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-xdm-author-submission-set.csv), [Excel](../StructureDefinition-xdm-author-submission-set.xlsx) 



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
  "date" : "2026-07-23T08:53:51+00:00",
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
      "short" : "Cette métadonnée représente la personne physique ou le système émetteur du lot de soumission.Pour les documents d’expression personnelle du patient, cette métadonnée fait référence au patient."
    },
    {
      "id" : "xdm-author-submission-set.role",
      "path" : "xdm-author-submission-set.role",
      "short" : "Cette métadonnée représente le rôle joué par l’auteur vis-à-vis du patient lors de la constitution du lot de soumission, c'est-à-dire à quel titre l’auteur est intervenu vis-à-vis du patient (ex : médecin traitant, Responsable de l'admission, Membre de l'équipe de soins, etc.)."
    }]
  }
}

```
