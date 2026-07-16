# Accueil - Portabilité des Données LGC v0.1.0

## Accueil

 **PDLGC Implementation Guide - Data portability for Practice Management Software**
 This guide defines the functional and technical specifications for the portability of health data between practice management software vendors, in accordance with Article L.1470-5-1 of the French Public Health Code. 

### Introduction

La portabilité des données des logiciels de gestion de cabinet (LGC) permet de garantir qu'un changement d'éditeur de logiciel ne constitue plus un obstacle à l'exercice professionnel ni à la continuité des soins. Elle repose sur l'obligation de transfert des données de santé entre fournisseurs de services numériques, telle qu'introduite par l'article L.1470-5-1 du Code de la Santé Publique (loi n° 2026-403 du 26 mai 2026 de simplification de la vie économique).

Le présent guide d'implémentation traduit en spécifications fonctionnelles et techniques les exigences du **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC** élaboré par l'ANS et approuvé par arrêté du ministre chargé de la santé.

### Structure du guide d'implémentation

**Contexte métier**
 Le contexte métier, défini sur la présente page, présente les [cas d'usage](#contexte-metier-cas-usage), les [définitions](#contexte-metier-definitions), le [cadre juridique](#contexte-metier-cadre-juridique) ainsi que l'[organisation des processus collaboratifs](#contexte-metier-orga-processus). 

**Spécifications**
 La section **Spécifications** présente les spécifications fonctionnelles et techniques associcées à chaque processus collaboratif 
 L'[étude fonctionnelle](specs-main-flux-export-archive-portabilite.md#etude-fonctionnelle) présente notamment les acteurs, une définition du processus collaboratif et les concepts métiers utilisés.
 Les [spécifications techniques](sspecs-main-flux-export-archive-portabilite.md#specs-techniques) décrivent le flux d'export d'archive de Portabilité et son positionnement par rapport à d'autres profils, ainsi que les formats des documents échangés.
 La [structure de l'archive de Portabilité](struct-main-structure-archive.md) décrit quant à elle l'arborescence, les conventions d'écriture, et le contenu des différents fichiers de gestion de l'archive 

**Annexes**
 Cette [section](annexes.md) renvoie aux annexes relatives à la sécurité, aux téléchargements, et à toute autre documentation utile au présent volet 

**Ressources de conformité**
 La section [Ressources de conformité](#artifacts) liste les différents artefacts supportant les spécifications fonctionnelles et techniques 

### Scénarios et cas d'usage {contexte-metier-cas-usage}

Cette section décrit 3 Scenarios et plusieurs cas d'usage (non exclusifs) d'utilisation de la Portabilité extraits du **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC**.

| | | |
| :--- | :--- | :--- |
| Export massif | Intégralité de la patientèle | Changement de LGC, départ à la retraite,… |
| Export ciblé | Sous-ensemble de la patientèle | Départ d'un praticien, réquisition judiciaire ciblée,… |
| Export unitaire | Dossier d'un patient | Droit du patient, transfert à un confrère,… |

#### Scénario 1 : Export massif

Dans ce contexte, l'intégralité de la patientèle est transférée d'un fournisseur sortant vers un fournisseur destinataire.

**Cas d'usage 1.1 - changement de LGC** : Un médecin généraliste exerçant en cabinet libéral décide de changer de logiciel de gestion de cabinet. Son contrat avec l'éditeur sortant prend fin et il souhaite migrer l'intégralité de sa patientèle vers le nouveau logiciel.

**Cas d'usage 1.2 - départ à la retraite** : Un médecin part à la retraite. Il doit transmettre les dossiers de ses patients à un confrère repreneur qui n'utilise pas le même LGC.

**Cas d'usage 1.3 - Fusion ou réorganisation de structures** : deux structures de soins, utilisant deux LGC différents, fusionnent ou mutualisent leur activité. L'ensemble des données des patients doit être gérée dans un unique système d'information.

**Cas d'usage 1.4 - Export d'archivage** : un professionnel ou une structure cesse l'utilisation d'un LGC sans migration immédiate vers un autre logiciel. Les données sont exportées afin d'assurer leur conservation et leur disponibilité pour répondre aux obligations réglementaires ou aux besoins ultérieurs de continuité des soins.

#### Scénario 2 : Export ciblé

Dans ce contexte, une sélection de la patientièle est transférée d'un fournisseur sortant vers un fournisseur destinataire. La sélection peut correspondre à un filtre par professionnel de santé ou par période.

**Cas d'usage 2.1 - Scission d'une structure collective** : Un praticien quitte une maison de santé pluriprofessionnelle (MSP) pour s'installer en cabinet individuel. Il souhaite récupérer les dossiers de ses patients.

**Cas d'usage 2.2 - Cessation d'activité d'une structure** : un centre de santé ou un cabinet de groupe cesse son activité. Les dossiers des patients doivent être transférés vers plusieurs professionnels ou structures assurant la continuité des soins.

**Cas d'usage 2.3 - Réorganisation interne d'une structure** : une structure répartit son activité entre plusieurs sites ou plusieurs équipes médicales. Une partie des dossiers doit être transférée vers un autre LGC.

**Cas d'usage 2.4 - Réquisition judiciaire ciblée** : dans le cadre d'une procédure judiciaire ou d'une expertise, une autorité compétente demande la communication d'un ensemble déterminé de dossiers répondant à des critères précis (patients, période, activité, etc.). Le professionnel de santé doit pouvoir réaliser un export sélectif des données concernées, dans le respect des exigences de sécurité, de traçabilité et de confidentialité.

#### Scénario 3 : Export unitaire

Dans ce contexte, seul un dossier patient est transféré d'un fournisseur sortant vers un fournisseur destinataire.

**Cas d'usage 3.1 - Exercice du droit du patient** : un patient demande la communication ou la portabilité de son dossier médical. Le professionnel de santé doit être en mesure de produire un export individuel des données le concernant dans un format exploitable et lisible.

**Cas d'usage 3.2 - Transfert à un confrère** : un patient change de médecin traitant ou est orienté vers un autre professionnel de santé. Le dossier patient est transmis afin d'assurer la continuité des soins.

**Cas d'usage 3.3 - Demande d'un ayant droit ou d'un représentant légal** : lorsqu'un ayant droit, un tuteur ou un représentant légal exerce les droits prévus par les dispositions légales applicables, le dossier du patient concerné peut faire l'objet d'un export unitaire.

**Cas d'usage 3.4 - Réquisition judiciaire** : dans le cadre d'une procédure judiciaire, une autorité habilitée ou un expert désigné demande la transmission du dossier médical d'un patient. Le professionnel de santé doit pouvoir réaliser un export des données concernées, dans le respect des exigences de sécurité, de traçabilité et de confidentialité.

### Cadre juridique

#### Cadre réglementaire

La portabilité des données LGC est encadrée par les textes suivants :

* Article L.1470-5-1 du Code de la santé publique (article 55 de la loi n° 2026-403 du 26 mai 2026 de simplification de la vie économique), instaurant l'obligation de transfert des données par le fournisseur sortant ;
* Article L.1470-5 du Code de la santé publique, fondant l'opposabilité du présent référentiel par arrêté du ministre chargé de la santé ;
* Article L.1470-6 du Code de la santé publique et décret n° 2026-153 du 3 mars 2026, définissant les modalités de contrôle et de sanction ;
* Règlement Général sur la Protection des Données (RGPD) ;
* Référentiels HDS, RGS et CI-SIS.

Le présent référentiel complète ces obligations sans se substituer aux obligations pénales ou civiles existantes.

#### Échange et traitement de données à caractère personnel

L'export et le transfert de données de santé dans le cadre de la portabilité constituent un traitement de données à caractère personnel, qui entre dans le champ d'application du RGPD. Le professionnel de santé demeure responsable de traitement pour les données dont il a la charge. Le processus de portabilité ne peut entraîner aucune rupture de la confidentialité des données de santé.

### Définitions

**Portabilité des données LGC** : La portabilité des données des logiciels de gestion de cabinet désigne l'obligation faite aux éditeurs de permettre l'export et le transfert des données de santé traitées dans leur logiciel, sans entrave technique, contractuelle ou tarifaire sur le périmètre pivot.

**Périmètre pivot** : Le périmètre pivot désigne l'ensemble minimal, obligatoire et standardisé de données de santé (administratives et médicales) dont le transfert doit être garanti sans frais et dans un délai défini. Il constitue le socle d'obligations de résultat du **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC**. Les données situées hors périmètre pivot (données comptables et de facturation détaillée, traces système, paramètres de configuration, logs bruts d'activité, données analytiques hors prise en charge primaire,…) peuvent faire l'objet d'un export, mais ne sont pas soumises à l'obligation de gratuité.

**Documentation d’export** : Guide technique obligatoire décrivant la structure de l'archive, le ou les dictionnaire(s) de données (formats techniques des fichiers et données, mapping des données propriétaires avec les données standardisées du CI-SIS, profondeur historique), les schémas techniques de validation et les jeux d’échantillons.

**Export** : action par laquelle l’éditeur sortant fournit les données au professionnel ou à un fournisseur destinataire sous forme structurée et documentée.

**Export en autonomie**: Capacité pour le professionnel de déclencher l'export lui-même sans dépendre d'un acte manuel de l'éditeur sortant.

**Import**: action par laquelle l’éditeur destinataire intègre les données exportées.

**Transfert** : ensemble des opérations d’export et, si applicable, d’import visant à restituer la portabilité.

**Format opposable** : format imposé pour certaines données du périmètre pivot à la date d’entrée en vigueur

**Donnée Structurée** : Donnée organisée selon un format permettant un traitement automatisé sans perte de sens (ex: XML, JSON, CDA).

**Données négatives et données non renseignées** : Une **donnée négative** est une donnée saisie explicitement pour attester de l'absence d'un élément clinique (ex. : absence confirmée d'allergie). Elle se distingue d'une **donnée non renseignée**, qui traduit l'absence de saisie dans le logiciel, sans qu'aucune conclusion clinique ne puisse en être tirée. Cette distinction doit être préservée dans l'export et explicitée dans la documentation d'export.

**Données transverses** : données produites ou gérées par le LGC qui ne sont pas rattachées à un dossier patient déterminé, mais qui sont associées à l'activité du professionnel de santé, du cabinet ou de la structure de soins. Elles contribuent au fonctionnement et à l'organisation de l'activité sans constituer des données médicales propres à un patient. Les données transverses comprennent notamment les données d'agenda et de planification (rendez-vous, plages d'ouverture, indisponibilités), les traces et journaux techniques (logs d'accès, de modification ou d'administration) ainsi que certaines données organisationnelles ou de paramétrage liées à l'exercice du professionnel ou de la structure. Les données transverses peuvent être incluses ou exclues du périmètre d'export selon le contexte d'usage, conformément aux règles définies par le présent guide.

### Organisation des processus collaboratifs

Le domaine "Export de données de santé" comprend les différents volets permettant un échange de données de santé s'appuyant sur le profil IHE_XDM.

Organisation des processus collaboratifs d'export de données de santé


Le processus collaboratif d'**échanges de document de Santé via MS Santé** est relatif à l'échange d'un ou plusieurs documents de santé concernant un même patient entre un système initiateur et un système cible. Les documents sont transmis sous la forme d'une archive XDM, accompagnés de leurs métadonnées, au moyen d'une messagerie sécurisée de santé (MS Santé). Ce processus fait l'objet de spécifications dédiées.

Le périmètre du présent guide d'implémentation couvre le processus collaboratif d'**export d'archive de Portabilité**.

### Dépendances







### Propriété intellectuelle

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.4.0/CodeSystem-ISO3166Part1.html): [ActorPS](StructureDefinition-ActorPS.md), [ActorPatient](StructureDefinition-ActorPatient.md)... Show 47 more, [ActorSNR](StructureDefinition-ActorSNR.md), [ActorSystem](StructureDefinition-ActorSystem.md), [ActorXDS](StructureDefinition-ActorXDS.md), [Archive](StructureDefinition-archive-xdm.md), [Association](StructureDefinition-association-xdm.md), [Author](StructureDefinition-Author.md), [AuthorDocumentEntry](StructureDefinition-AuthorDocumentEntry.md), [AuthorInstitution](StructureDefinition-AuthorInstitution.md), [AuthorSubmissionSet](StructureDefinition-AuthorSubmissionSet.md), [CS_AssociationType](CodeSystem-cs-association-type.md), [DocumentEntry](StructureDefinition-DocumentEntry.md), [EventCode](StructureDefinition-EventCode.md), [Identifiant](StructureDefinition-Identifiant.md), [IdentifiantSysteme](StructureDefinition-IdentifiantSysteme.md), [MatriculeINS](StructureDefinition-MatriculeINS.md), [PDLGC](index.md), [PDLGCArchivePatient](StructureDefinition-pdlgc-archive-patient.md), [PDLGCArchivePortabilite](StructureDefinition-pdlgc-archive-portabilite.md), [PDLGCArchiveTransverse](StructureDefinition-pdlgc-archive-transverse.md), [PDLGCContactPortabilite](StructureDefinition-pdlgc-contact-portabilite.md), [PDLGCDocumentation](StructureDefinition-pdlgc-documentation.md), [PDLGCExportStatusCS](CodeSystem-pdlgc-export-status-cs.md), [PDLGCExportStatusVS](ValueSet-pdlgc-export-status-vs.md), [PDLGCExportTypeCS](CodeSystem-pdlgc-type-export-cs.md), [PDLGCExportTypeVS](ValueSet-pdlgc-export-type-vs.md), [PDLGCFournisseurSortant](StructureDefinition-pdlgc-fournisseur-sortant.md), [PDLGCIndex](StructureDefinition-pdlgc-index.md), [PDLGCManifest](StructureDefinition-pdlgc-manifest.md), [PDLGCManifestArchives](StructureDefinition-pdlgc-manifest-archives.md), [PDLGCMetadata](StructureDefinition-pdlgc-metadata.md), [PDLGCReadme](StructureDefinition-pdlgc-readme.md), [PDLGCRepoTypeCS](CodeSystem-pdlgc-repo-type-cs.md), [PDLGCRepoTypeVS](ValueSet-pdlgc-repo-type-vs.md), [PDLGCSignature](StructureDefinition-pdlgc-signature.md), [PDLGCSystem](StructureDefinition-pdlgc-system.md), [PDLGC_Demandeur](ActorDefinition-PDLGC-Demandeur.md), [PDLGC_Destinataire](ActorDefinition-PDLGC-Destinataire.md), [PDLGC_FournisseurDestinataire](ActorDefinition-PDLGC-Fournisseur-Destinataire.md), [PDLGC_FournisseurSortant](ActorDefinition-PDLGC-Fournisseur-Sortant.md), [PSIdNat](StructureDefinition-PSIdNat.md), [PatientId](StructureDefinition-PatientId.md), [SNR](StructureDefinition-SNR.md), [SourcePatientId](StructureDefinition-SourcePatientId.md), [SourcePatientInfo](StructureDefinition-SourcePatientInfo.md), [StructIdNat](StructureDefinition-StructIdNat.md), [SubmissionSet](StructureDefinition-SubmissionSet.md) and [VS_AssociationType](ValueSet-vs-association-type.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.4.0/CodeSystem-v3-loinc.html): [DocumentEntry](StructureDefinition-DocumentEntry.md)


