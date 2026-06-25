# Accueil - Portabilité des Données LGC v1.0.0

## Accueil

 
There is no translation page available for the current page, so it has been rendered in the default language 

 **PDLGC Implementation Guide - Data portability for Practice Management Software**
 This guide defines the functional and technical specifications for the portability of health data between practice management software vendors, in accordance with Article L.1470-5-1 of the French Public Health Code. 

### Introduction

La portabilité des données des logiciels de gestion de cabinet (LGC) permet de garantir qu'un changement d'éditeur de logiciel ne constitue plus un obstacle à l'exercice professionnel ni à la continuité des soins. Elle repose sur l'obligation de transfert des données de santé entre fournisseurs de services numériques, telle qu'introduite par l'article L.1470-5-1 du Code de la Santé Publique (loi n° 2026-403 du 26 mai 2026 de simplification de la vie économique).

Le présent guide d'implémentation traduit en spécifications fonctionnelles et techniques les exigences du **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC** élaboré par l'ANS et approuvé par arrêté du ministre chargé de la santé.

### Structure du guide d'implémentation

**Contexte métier**

**Spécifications**

**Ressources de conformité**

**Annexes**

### Scénarios et cas d'usage

Cette section décrit 3 Scenarios et plusieurs cas d'usage (non exclusifs) d'utilisation de la Portabilité extraits du **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC**.

| | | | |
| :--- | :--- | :--- | :--- |
| Export massif | Intégralité de la patientèle | Changement de LGC, départ à la retraite,… | ≤ 30 jours |
| Export ciblé | Sous-ensemble de la patientèle | Départ d'un praticien, réquisition judiciaire ciblée,… | ≤ 30 jours |
| Export unitaire | Dossier d'un patient | Droit du patient, transfert à un confrère,… | Immédiat ou sans délai indu |

#### Scenario 1 : Export massif

Dans ce contexte, l'intégralité de la patientèle est transférée d'un fournisseur sortant vers un fournisseur destinataire.

**Cas d'usage 1.1 - changement de LGC** : Un médecin généraliste exerçant en cabinet libéral décide de changer de logiciel de gestion de cabinet. Son contrat avec l'éditeur sortant prend fin et il souhaite migrer l'intégralité de sa patientèle vers le nouveau logiciel.

**Cas d'usage 1.2 - départ à la retraite** : Un médecin part à la retraite. Il doit transmettre les dossiers de ses patients à un confrère repreneur qui n'utilise pas le même LGC.

**Cas d'usage 1.3 - Fusion ou réorganisation de structures** : deux structures de soins, utilisant deux LGC différents, fusionnent ou mutualisent leur activité. L'ensemble des données des patients doit être gérée dans un unique système d'information.

**Cas d'usage 1.4 - Export d'archivage** : un professionnel ou une structure cesse l'utilisation d'un LGC sans migration immédiate vers un autre logiciel. Les données sont exportées afin d'assurer leur conservation et leur disponibilité pour répondre aux obligations réglementaires ou aux besoins ultérieurs de continuité des soins.

#### Scenario 2 : Export ciblé

Dans ce contexte, une sélection de la patientièle est transférée d'un fournisseur sortant vers un fournisseur destinataire. La sélection peut correspondre à un filtre par professionnel de santé ou par période.

**Cas d'usage 2.1 - Scission d'une structure collective** : Un praticien quitte une maison de santé pluriprofessionnelle (MSP) pour s'installer en cabinet individuel. Il souhaite récupérer les dossiers de ses patients.

**Cas d'usage 2.2 - Cessation d'activité d'une structure** : un centre de santé ou un cabinet de groupe cesse son activité. Les dossiers des patients doivent être transférés vers plusieurs professionnels ou structures assurant la continuité des soins.

**Cas d'usage 2.3 - Réorganisation interne d'une structure** : une structure répartit son activité entre plusieurs sites ou plusieurs équipes médicales. Une partie des dossiers doit être transférée vers un autre LGC.

**Cas d'usage 2.4 - Réquisition judiciaire ciblée** : dans le cadre d'une procédure judiciaire ou d'une expertise, une autorité compétente demande la communication d'un ensemble déterminé de dossiers répondant à des critères précis (patients, période, activité, etc.). Le professionnel de santé doit pouvoir réaliser un export sélectif des données concernées, dans le respect des exigences de sécurité, de traçabilité et de confidentialité.

#### Scenario 3 : Export unitaire

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

Le domaine " Portabilité de données LGC" comprend les différentes étapes liées à une demande de portabilité de données médicales et administratives d'un patient.

### Acteurs

Le tableau ci-dessous récapitule les acteurs pouvant être impliqués dans les différents processus collaboratif

| | | |
| :--- | :--- | :--- |
| Acteur | Type d'acteur | Description |
| [PDLGC Fournisseur Destinataire](ActorDefinition-PDLGC-Fournisseur-Destinataire.md) | System | Editeur recevant les données en vue de leur intégration. Il est tenu d'une obligation de moyens pour l'import dès lors que le format est conforme au référentiel. |
| [PDLGC Fournisseur Sortant](ActorDefinition-PDLGC-Fournisseur-Sortant.md) | System | Éditeur du LGC dont le contrat prend fin ou depuis lequel l'utilisateur souhaite exporter ses données. C'est lui qui est redevable de l'obligation de portabilité gratuite du Périmètre Pivot sous 30 jours calendaires. |
| [PDLGC Patient](ActorDefinition-PDLGC-Patient.md) | Person | Bénéficiaire de ses droits de portabilité individuelle (RGPD Art. 20, Art. L.1111-7 CSP). Peut demander directement l'export de ses données. |
| [PDLGC Professionnel de Santé Destinataire](ActorDefinition-PDLGC-PS-Destinataire.md) | Person | Médecin ou professionnel de santé libéral recevant l'export via son LGC. |
| [PDLGC Professionnel de Santé Initiateur](ActorDefinition-PDLGC-PS-Initiateur.md) | Person | Médecin ou professionnel de santé libéral, demandeur de l'export et responsable du contenu médical transféré. |

### Dépendances





### Propriété intellectuelle

This publication includes IP covered under the following statements.

* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [EyeColor](StructureDefinition-EyeColor.md), [EyeColorVS](ValueSet-EyeColorVS.md) and [MeltingPotVS](ValueSet-MeltingPotVS.md)


