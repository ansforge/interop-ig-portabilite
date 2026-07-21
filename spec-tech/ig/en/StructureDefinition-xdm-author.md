# XDM Author - Portabilité des Données LGC v0.1.0

## Logical Model: XDM Author 

 
Modèle logique d'un auteur. 
Représente les personnes physiques et/ou les systèmes (dispositifs, automates, services numériques référencés…) auteurs d’un document ou d'un lot de soummission. 
L’auteur peut être : 
* Un professionnel (personne physique) via son logiciel de professionnel,
* Le patient/usager (personne physique) via Mon espace Santé,
* Un système de structure (dispositif, automate, appareil connecté…),
* Un SNR (Service Numérique Référencé),
 
**author** est un ensemble constitué des sous-attributs **authorInstitution** , **authorPerson**, **authorRole** et **authorSpecialty** et ne porte pas de valeur par lui-même. 

**Usages:**

* Derived from this Logical Model: [XDM AuthorDocumentEntry](StructureDefinition-xdm-author-document-entry.md) and [XDM AuthorSubmissionSet](StructureDefinition-xdm-author-submission-set.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-xdm-author.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-xdm-author.csv), [Excel](../StructureDefinition-xdm-author.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xdm-author",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-author",
  "version" : "0.1.0",
  "name" : "XDMAuthor",
  "title" : "XDM Author",
  "status" : "draft",
  "date" : "2026-07-21T16:28:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Modèle logique d'un auteur.\n\nReprésente les personnes physiques et/ou les systèmes (dispositifs, automates, services numériques référencés…) auteurs d’un document ou d'un lot de soummission. \n\nL’auteur peut être : \n- Un professionnel (personne physique) via son logiciel de professionnel, \n- Le patient/usager (personne physique) via Mon espace Santé, \n- Un système de structure (dispositif, automate, appareil connecté…), \n- Un SNR (Service Numérique Référencé), \n\n\n**author** est un ensemble constitué des sous-attributs **authorInstitution** , **authorPerson**, **authorRole** et **authorSpecialty** et ne porte pas de valeur par lui-même. ",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-author",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "xdm-author",
      "path" : "xdm-author",
      "short" : "XDM Author",
      "definition" : "Modèle logique d'un auteur.\n\nReprésente les personnes physiques et/ou les systèmes (dispositifs, automates, services numériques référencés…) auteurs d’un document ou d'un lot de soummission. \n\nL’auteur peut être : \n- Un professionnel (personne physique) via son logiciel de professionnel, \n- Le patient/usager (personne physique) via Mon espace Santé, \n- Un système de structure (dispositif, automate, appareil connecté…), \n- Un SNR (Service Numérique Référencé), \n\n\n**author** est un ensemble constitué des sous-attributs **authorInstitution** , **authorPerson**, **authorRole** et **authorSpecialty** et ne porte pas de valeur par lui-même. "
    },
    {
      "id" : "xdm-author.institution",
      "path" : "xdm-author.institution",
      "short" : "Cet attribut représente la structure de l’auteur.",
      "definition" : "Cet attribut représente la structure de l’auteur.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-author-institution"
      }]
    },
    {
      "id" : "xdm-author.person[x]",
      "path" : "xdm-author.person[x]",
      "short" : "Author",
      "definition" : "Author",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-ps"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-patient"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-snr"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/xdm-actor-system"
      }]
    },
    {
      "id" : "xdm-author.role",
      "path" : "xdm-author.role",
      "short" : "Cet attribut représente le rôle fonctionnel joué par l’auteur vis-à-vis du patient/usager lors de la création du document, c'est-à-dire à quel titre l’auteur est intervenu vis-à-vis du patient (ex : médecin traitant, Responsable de l'admission, Membre de l'équipe de soins, etc.). ",
      "definition" : "**Author Role**",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS|20250523120000"
      }
    },
    {
      "id" : "xdm-author.specialty",
      "path" : "xdm-author.specialty",
      "short" : "Cet attribut représente la profession éventuellement associée au savoir-faire de l’auteur professionnel caractérisé par sa profession ou la profession associée au genre d’activité pour l’auteur professionnel caractérisé par son rôle. ",
      "definition" : "**AutorSpecialty**",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J01-XdsAuthorSpecialty-CISIS/FHIR/JDV-J01-XdsAuthorSpecialty-CISIS|20260505120000"
      }
    }]
  }
}

```
