# Flux Export d'Archive de Portabilité - Portabilité des Données LGC v0.1.0

## Flux Export d'Archive de Portabilité

### Etude fonctionnelle

#### Acteurs

Le tableau ci-dessous récapitule les acteurs impliqués dans l'export d'une archive de portabilité :

| | | |
| :--- | :--- | :--- |
| Acteur | Type d'acteur | Description |
| [PDLGC Demandeur](ActorDefinition-PDLGC-Demandeur.md) | Personne | Demandeur de l'export.Il peut s'agir d'un médecin ou professionnel de santé libéral, responsable du contenu médical transféré.Il peut également s'agir du patient lui-même, bénéficiaire de ses droits de portabilité individuelle (RGPD Art. 20, Art. L.1111-7 CSP) |
| [PDLGC Destinataire](ActorDefinition-PDLGC-Destinataire.md) | Personne | Destinataire de l'export de données de LGC.Il peut s'agir d'un médecin ou professionnel de santé libéral recevant l'export via son LGC.Il peut également s'agir du patient lui-même, bénéficiaire de ses droits de portabilité individuelle (RGPD Art. 20, Art. L.1111-7 CSP).Dans le cas d'un export sur réquisition judiciaire, c'est le juge qui sera le destinataire. |
| [PDLGC Fournisseur Destinataire](ActorDefinition-PDLGC-Fournisseur-Destinataire.md) | Système | Fournisseur de LGC recevant les données en vue de leur intégration. Il est tenu d'une obligation de moyens pour l'import dès lors que le format réceptionné est conforme au référentiel. |
| [PDLGC Fournisseur Sortant](ActorDefinition-PDLGC-Fournisseur-Sortant.md) | Système | Fournisseur du LGC dont le contrat prend fin ou depuis lequel l'utilisateur souhaite exporter ses données. C'est lui qui est redevable de l'obligation de portabilité gratuite du Périmètre Pivot sous 30 jours calendaires. |

#### Définition du processus collaboratif

Le processus collaboratif « Export d'archive de portabilité » couvre l'ensemble des situations dans lesquelles un professionnel de santé ou un patient exerce son droit à la portabilité des données auprès d'un éditeur de logiciel LGC.

Quel que soit le cas d'usage, le processus repose sur un unique flux de production et de mise à disposition d'une archive de portabilité, dont la structure s'appuie sur le profil IHE XDM. Le type d'export (unitaire, ciblé ou massif) ne modifie pas la nature de cette transaction ; il détermine uniquement le périmètre des données incluses dans l'archive produite et certaines contraintes additionnelles (délai de mise à disposition, format des données, intégration dans un logiciel ou consultation directe…).

##### Pré-conditions

Le professionnel de santé, en tant que demandeur de l'export, doit au préalable :

* Être habilité à initier la demande, dans le respect des règles de gestion des droits propres au logiciel ;
* Être en mesure de préciser le périmètre de l'export souhaité (dossier patient identifié, ensemble de patients selon un critère de sélection, ou intégralité de la patientèle) ;
* Disposer, le cas échéant, des coordonnées de l'éditeur ou du système destinataire.

L'éditeur sortant, en tant que producteur de l'archive, doit au préalable :

* Disposer d'un mécanisme permettant de recevoir et d'horodater la demande ;
* Disposer des moyens techniques de génération de l'archive conformément à la structure de l'archive de Portabilité définie dans le présent guide ;
* Disposer d'un Contact Portabilité identifié et joignable.

##### Description des actions

Le diagramme ci-dessous illustre le contexte fonctionnel de la transaction ExportArchivePortabilite. 

Diagramme d'activité du processus collaboratif "Export d'archive Portabilité"


Il est important de noter que les modalités d'exploitation de l'archive (import dans un système ou consultation directe) sont présentées à titre de contexte et ne relèvent pas du périmètre de la spécification. Seule la transaction de production et de mise à disposition de l'archive de portabilité est spécifiée par le présent guide d'implémentation.

| | |
| :--- | :--- |
| Initier la demande d'export | Le professionnel de santé adresse à l'éditeur sortant une demande d'export précisant le périmètre souhaité (unitaire, ciblé ou massif). Cette demande intervient soit de sa propre initiative soit à l'initiative du patient. |
| Produire l'archive | L'éditeur sortant génère l'archive de portabilité conforme au profil IHE XDM, incluant les données du périmètre déterminé, la documentation d'export et le rapport d'intégrité associés. |
| Mettre à disposition l'archive | L'éditeur sortant met l'archive à disposition du demandeur ou de l'éditeur destinataire selon un mode sécurisé (lien chiffré, plateforme de transfert HDS ou support physique à défaut). |
| Vérifier la complétude et l'intégrité | Le destinataire de l'archive contrôle, à l'aide du fichier INDEX et du rapport d'intégrité, que l'ensemble des données attendues a été correctement transmis. |
| Intégrer les données / ouvrir l'archive | Si le destinataire est un système, alors il exploite les données reçues en les intégrant. Si le destinataire est une personne alors elle télécharge/ouvre l'archive. |
| Mettre à disposition / consulter les données | Si le destinataire est un système, il met à disposition les données à l'utilisateur de logiciel. Si le destinataire est une personne, elle consulte directement les données. |

##### Contraintes

Les modalités détaillées encadrant les opérations d'export (périmètre des données obligatoires, délais de mise à disposition, conditions de gratuité, gestion des cas particuliers,…) sont définies dans le **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC**, opposable par arrêté du ministre chargé de la santé.

Le présent guide d'implémentation ne reprend pas ces contraintes et renvoie au référentiel pour toute question relative aux obligations de résultat pesant sur le fournisseur sortant et le fournisseur destinataire. Les spécifications du présent guide portent exclusivement sur les aspects techniques d'interopérabilité : structure de l'archive de portabilité, formats d'interchange, métadonnées et mécanismes d'intégrité.

#### Concepts métiers utilisés dans le flux d'export d'archive de Portabilité

Les concepts métiers portés par ce flux sont les suivants :

Diagramme des concepts contenus dans le flux "Export d'archive Portabilité"


Le tableau ci-dessous définit les différents objets de l'archive de portabilité:

**Archives et répertoires**

| | |
| :--- | :--- |
| Archive de portabilité [1..1] | Conteneur structuré regroupant l'ensemble des documents et données exportés, ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire. |
| Archive XDM Patient (données médicales et administratives du patient) [1..1] | Répertoire contenant l'ensemble des données de santé d'un patient dans un format structuré standardisé ou propriétaire. |
| Archive de données transverses [0..1] | Répertoire contenant l'ensemble des données transverses associées au praticien ou au cabinet (agenda, logs, comptabilité,…). |
| Documentation d'export [1..1] | Ensemble des éléments accompagnant l'archive et permettant son interprétation par le système destinataire : dictionnaire de données, dictionnaire de terminologies propriétaires, schéma technique de validation, jeu d'échantillons,… |

**Fichiers de gestion**

| | |
| :--- | :--- |
| MANIFEST.XML [1..1] | Vue synthétique du contenu de l'archive de portabilité et rapport d'intégrité. |
| SIGN.XML [1..1] | Signature attestant de l'authenticité et de l'imputabilité des données de l'archive de portabilité. |
| README.TXT [2..*] | Informations éditoriales et instructions d'utilisation relatives à l'archive dans laquelle il se trouve (portabilité, transverse ou patient). Un README est décliné pour chacune de ces trois archives, à partir d'un socle commun. |
| METADATA.XML [1..*] | Fichier de métadonnées du lot de soumission, conforme au profil IHE XDM, décrivant les documents patient qu'il accompagne. |
| INDEX.HTM [1..*] | Page d'index renfermant les informations éditoriales, conformément au volet**Echanges de Documents de Santé**. |

**Documents médicaux et administratifs**

| | |
| :--- | :--- |
| Document périmètre pivot [1..*] | Ensemble minimal, obligatoire et structuré de données administratives et médicales (confère[Périmètre pivot](sf-perimetre-pivot.md)). |
| Document hors périmètre pivot [0..*] | Données dont l'export est facultatif. Leur export doit toutefois être structuré et documenté, au même titre que pour les documents du périmètre pivot. |
| PDF [1..*] | Format de consultation pour les données Patient. Ces documents n'ont pas vocation à être intégrés par le destinataire si le destinataire est un système. |

### Spécifications techniques

#### Transaction Export d'Archive de Portabilité

Cette transaction définit les exigences relatives à la structure d'une archive Zip de Portabilité. Elle est déclenchée par le demandeur (Patient ou Professionnel de Santé) qui souhaite la portabilité de données d'un LGC. Le fournisseur sortant assemble alors le contenu de l'archive ZIP pour la transmettre au destinataire (fournissuer destinataire ou personne physique) qui intègrera / lira les données.

Diagramme d'intéraction


La structure complète de l'archive ZIP est décrite dans la section [Structure de l'archive de Portabilité](specs-main-structure-archive)

#### Périmètre pivot

Les données du périmètre pivot, telles que définies en annexe 1 du **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC**, doivent être exportées conformément aux formats indiqués dans le tableau ci-après.

Les formats standardisés sont à privilégier lorsqu'ils sont nativement utilisés ou disponibles au sein du logiciel. Lorsqu'un document existe dans un format standardisé, **il DOIT être exporté dans la version et le format dans laquelle il a été produit ou reçu, sans obligation de conversion vers une version plus récente des spécifications**. La documentation d'export doit préciser la version des spécifications ayant présidé à la production de chaque type de document.

**En complément des formats structurés détaillés ci-dessous, et destinés à être intégrés par le fournisseur destinataire, tous les documents du dossier patient DOIVENT être exportés dans un format de consultation de type PDF**. Cette représentation vise à garantir l’accès et la consultation des informations exportées, y compris en l’absence d’un logiciel capable d’exploiter les formats structurés associés. 

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Identification et données administratives patient | Patient | *  Format interop opposable :  CDA R2 Niveau 3
* *Format cible européen (non requis à date) : FHIR*
 | * Spécifications opposables :[Volet de Synthèse Médicale](https://esante.gouv.fr/volet-synthese-medicale) (CI-SIS)
 | Identité, INS qualifiée, coordonnées, professionnels de santé associés,... |
| Données médicales | Patient | *  Format interop opposable : CDA R2 Niveau 3
* *Format cible européen (non requis à date) : FHIR*
 | * Spécifications opposables : [Volet de Synthèse Médicale](https://esante.gouv.fr/volet-synthese-medicale) (CI-SIS)
 | Antécédents, allergies, pathologies, traitements, facteurs de risque,... |
| Documents médicaux (produits dans le logiciel ou importés) | Patient | * Format opposable : Tout format structuré documenté
* Format interop prioritaire : CDA R2 Niveau 1 ou Niveau 3
* Alternative : Autre format structuré (JSON, XML,...)
 | * Spécifications prioritaires : [Volets du CI-SIS](https://esante.gouv.fr/offres-services/ci-sis/espace-publication)
 |  |
| Données de biologie | Patient | * Format opposable : Tout format structuré documenté
* Format interop prioritaire : CDA R2 Niveau 1 ou Niveau 3
* Alternative : Autre format structuré (JSON, XML,...)
 | * Terminologie obligatoire : LOINC
* Spécifications prioritaires pour un format CDA R2 Niveau 3 : [Volet CR-BIO](https://esante.gouv.fr/volet-cr-bio-compte-rendu-dexamens-de-biologie-medicale)
 |  |
| Clinique – Notes de consultation | Patient | * Format opposable : Tout format structuré documenté (JSON, XML,...)
* *Format cible (non requis à date) : FHIR*
 | * *Spécifications cibles : [Cahier de liaison](https://interop.esante.gouv.fr/ig/fhir/cdl/)*
 | Structuration minimale obligatoire :* Horodatage
* Identification du professionnel
 |
| Clinique – Paramètres vitaux | Patient | *  Format opposable : Tout format structuré documenté (JSON, XML,...)
*  *Format cible CI-SIS (non requis à date) : FHIR*
 | * *Spécifications cibles : [Mesures de santé](https://interop.esante.gouv.fr/ig/fhir/mesures/)*
 |  |
| Clinique – Notes personnelles | Patient | * Format opposable : Tout format structuré documenté (JSON, XML,...)
 |  |  |
| Prescriptions | Patient | * Format opposable : Tout format structuré documenté (JSON, XML,...)
* *Format cible européen (non requis à date) : FHIR*
 |  | Historique des ordonnances et dispensations |
| Agenda | Transverse | * Format opposable : Tout format structuré documenté
* Format prioritaire : iCalendar
* Alternative : Autre format structuré (JSON, XML,...)
 | * Spécifications prioritaires :  RFC 5545
 | Rendez-vous passés, rendez-vous à venir |
| Traces | Transverse | * Format opposable : Tout format structuré documenté
* Format prioritaire : Syslog
* Alternative : Autre format structuré (JSON, XML,...)
 | * Spécifications prioritaires : [Profil IHE ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html)
* Autre référence : [Référentiel d'imputabilité](https://esante.gouv.fr/sites/default/files/media_entity/documents/pgssi_referentiel_imputabilite_v1.0_0.pdf)
 | Structuration minimale obligatoire :* Accès
* Modifications
* Horodatage
 |

OpposableFormat imposé s'appuyant sur des spécifications CI-SIS

lorsque celles-ci sont communément utilisées par les éditeurs

PrioritaireFormat recommandé, à utiliser en priorité

AlternatifFormat accepté à défaut

#### Spécificités du présent volet Portabilité des données LGC

Le présent volet s'inscrit dans la continuité des travaux du volet Echanges de Documents de Santé (EDS), s'appuyant sur la transaction ITI-32 et la structure d'archive XDM définie par IHE. Il étend toutefois les usages sur deux points essentiels pour répondre aux contraintes de la portabilité des données LGC.

**Une archive chapeau de Portabilite**

Contrairement au volet Echange de Documents de Santé, qui traite le dossier d'un patient unique dans un fichier ZIP unique, la portabilité LGC nécessite de transporter en une seule opération le dossier de plusieurs patients. Le présent volet définit à cet effet une archive chapeau de Portabilité, hors profil XDM, qui encapsule une collection d'archives :

* une archive XDM par patient exporté, conforme au profil IHE XDM et intégrable isolément par le système destinataire sans dépendance aux autres archives de la collection ;
* une archive de données transverses, regroupant les données ne relevant pas d'un dossier patient individuel (agenda, traces d'activité, données de gestion,…).

L'archive chapeau porte à sa racine un `MANIFEST.XML`, distinct des `METADATA.XML` présents dans chaque archive XDM patient. Le `MANIFEST.XML` décrit la collection dans son ensemble (nombre de dossiers, volumétrie, intégrité globale) et constitue le point d'entrée pour le traitement automatisé de l'export par le système destinataire.

**Un mode de transport non contraint**

Contrairement au volet EDS, le présent volet ne restreint pas le mode de transport de l'archive chapeau. Plusieurs modalités sont admises, à la discrétion des acteurs et dans le respect des exigences de sécurité du référentiel (chiffrement, traçabilité, hébergement HDS) :

* mise à disposition via une interface de téléchargement sécurisée ;
* transfert via une plateforme d'échange HDS ;
* email ;
* support physique chiffré, à titre exceptionnel et dérogatoire.

Le choix du mode de transport ne modifie pas la structure de l'archive chapeau de Portabilité, ni le contenu des archives XDM patient. Les spécifications définies dans ce volet s'appliquent indépendamment du canal retenu.

#### Comparaison des périmètres : IHE XDM, volet EDS et volet Portabilité LGC

| | | | |
| :--- | :--- | :--- | :--- |
| **Périmètre patient** | 1 à n patient(s) par archive ZIP.1 unique patient par lot de soumission | 1 patient par archive ZIP | Collection multi-patients (1 archive XDM ZIP par patient) + données transverses (archive ZIP dédiée) |
| **Structure de l'archive** | `INDEX.HTM`+`README.TXT`+ répertoire`IHE_XDM/`contenant 1 à n`SUBSETnn/`.Chaque répertoire`SUBSETnn/`stocke 1`METADATA.XML`+ des documents | Conforme IHE_XDM.Encapsulation obligatoire de la structure XDM dans une archive`IHE_XDM.ZIP`.Limité à un seul`SUBSET01/` | Archive chapeau`PAAAAAMMJJThhmmss.ZIP`(hors profil IHE_XDM) encapsulant 1`MANIFEST.XML`, 1`README.TXT`, des archives XDM Patient, une archive de donnée transverse et un répertoire de documentation |
| **Fichier de contrôle global** | Non prévu | Non prévu | `MANIFEST.XML`à la racine de l'archive de Portabilité |
| **Métadonnées documentaires** | `METADATA.XML`par`SUBSET` | `METADATA.XML`par`SUBSET` | `METADATA.XML`par`SUBSET` |
| **Données transverses** | Autorisées mais non couvertes par le profil | Non prévu | Archive`TRANSVERSE`(agenda, traces, gestion,…) intégrée dans l'archive de portabilité.Construite sur le modèle IHE_XDM |
| **Mode de transport** | CD-R, USB, ZIP par messagerie | ZIP par messagerie sécurisée de santé (MSSanté) uniquement | Non contraint (téléchargement sécurisé, plateforme HDS, support physique chiffré, email,…) |
| **Acteur initiateur** | Portable Media Creator | Portable Media Creator | Fournisseur sortant |
| **Acteur destinataire** | Portable Media Importer | Portable Media Importer | Fournisseur destinataire ou personne physique dans le cas d'une consultation directe (professionnel de santé, patient,…) |
| **Réponse applicative** | Optionnelle (messagerie uniquement) | Optionnelle | Non couverte par ce volet |
| **Signature numérique** | Optionnelle | Requise pour affectation au DMP | Requise pour attester de l'imputabilité de l'archive |

