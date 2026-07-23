# XDM AuthorDocumentEntry - Portabilité des Données LGC v0.1.0

## Modèle logique: XDM AuthorDocumentEntry 

 
Modèle logique d'un auteur d'un document Cette métadonnée représente les personnes physiques et/ou les systèmes (dispositifs, automates, services numériques référencés…) auteurs d’un document. L’auteur peut être : 
* Un professionnel (personne physique) via son logiciel de professionnel,
* Le patient/usager (personne physique) via Mon espace Santé,
* Un système de structure (dispositif, automate, appareil connecté…),
* Un SNR (Service Numérique Référencé),
 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [XDM DocumentEntry](StructureDefinition-xdm-document-entry.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/xdm-author-document-entry)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-xdm-author-document-entry.csv), [Excel](../StructureDefinition-xdm-author-document-entry.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdm-author-document-entry",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-author-document-entry",
  "version" : "0.1.0",
  "name" : "XDMAuthorDocumentEntry",
  "title" : "XDM AuthorDocumentEntry",
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
  "description" : "Modèle logique d'un auteur d'un document\nCette métadonnée représente les personnes physiques et/ou les systèmes (dispositifs, automates, services numériques référencés…) auteurs d’un document. \nL’auteur peut être : \n-  Un professionnel (personne physique) via son logiciel de professionnel, \n- Le patient/usager (personne physique) via Mon espace Santé, \n-  Un système de structure (dispositif, automate, appareil connecté…), \n-  Un SNR (Service Numérique Référencé), ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "AuthorDocumentEntryCDA",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "AuthorDocumentEntryCDA",
    "comment" : "Mapping CDA"
  },
  {
    "identity" : "AuthorDocumentEntryDICOMKOS",
    "uri" : "https://www.dicomstandard.org/",
    "name" : "AuthorDocumentEntryDICOMKOS",
    "comment" : "Mapping DICOM KOS"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-author-document-entry",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-author|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdm-author-document-entry",
      "path" : "xdm-author-document-entry",
      "short" : "XDM AuthorDocumentEntry",
      "definition" : "Modèle logique d'un auteur d'un document\nCette métadonnée représente les personnes physiques et/ou les systèmes (dispositifs, automates, services numériques référencés…) auteurs d’un document. \nL’auteur peut être : \n-  Un professionnel (personne physique) via son logiciel de professionnel, \n- Le patient/usager (personne physique) via Mon espace Santé, \n-  Un système de structure (dispositif, automate, appareil connecté…), \n-  Un SNR (Service Numérique Référencé), ",
      "mapping" : [{
        "identity" : "AuthorDocumentEntryCDA",
        "map" : "Author"
      },
      {
        "identity" : "AuthorDocumentEntryDICOMKOS",
        "map" : "Author"
      }]
    },
    {
      "id" : "xdm-author-document-entry.institution",
      "path" : "xdm-author-document-entry.institution",
      "short" : "Cet attribut représente la structure de l’auteur. Pour les documents d’expression personnelle du patient, cette métadonnée est absente."
    },
    {
      "id" : "xdm-author-document-entry.person[x]",
      "path" : "xdm-author-document-entry.person[x]",
      "short" : "Cet attribut représente l’auteur (humain ou système) ayant contribué au document. Pour les documents d’expression personnelle du patient, cette métadonnée fait référence au patient."
    },
    {
      "id" : "xdm-author-document-entry.role",
      "path" : "xdm-author-document-entry.role",
      "short" : "cette métadonnée représente le rôle joué par l’auteur vis-à-vis du patient lors de la constitution du lot de soumission, c'est-à-dire à quel titre l’auteur est intervenu vis-à-vis du patient (ex : médecin traitant, Responsable de l'admission, Membre de l'équipe de soins, etc.).",
      "mapping" : [{
        "identity" : "AuthorDocumentEntryCDA",
        "map" : "author/functionCode@displayName"
      },
      {
        "identity" : "AuthorDocumentEntryDICOMKOS",
        "map" : "Cet attribut n'a pas besoin d’être alimenté par un élément du DICOM KOS"
      }]
    },
    {
      "id" : "xdm-author-document-entry.specialty",
      "path" : "xdm-author-document-entry.specialty",
      "mapping" : [{
        "identity" : "AuthorDocumentEntryCDA",
        "map" : "author/assignedAuthor/code@code"
      },
      {
        "identity" : "AuthorDocumentEntryDICOMKOS",
        "map" : "Cette métadonnée peut ne pas être renseignée dans le cas d’un DICOM KOS.   Si elle contient une valeur, elle devra contenir le code : 'DISPOSITIF' du JDV_J01_XdsAuthorSpecialty_CISIS"
      }]
    }]
  }
}

```
