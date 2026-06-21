# Flux d'import - Portabilité des Données LGC v1.0.0

## Flux d'import

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Flux d'import — Spécifications techniques

Cette page décrit les spécifications techniques d'import de l'archive de portabilité par le Fournisseur Destinataire.

-------

### Obligations du Fournisseur Destinataire

Le fournisseur destinataire est soumis à une **obligation de moyens** (et non de résultat) pour l'import, dès lors que le format de l'archive est conforme au présent guide.

Il doit :

* Être capable de lire et d'importer les formats définis dans l'[Annexe 2 du référentiel](spec-technique-vue-ensemble.md)
* Proposer un environnement de test (sandbox) permettant au fournisseur sortant de valider la structure de ses fichiers avant la livraison réelle
* Émettre un accusé de réception après intégration réussie

-------

### Étapes d'intégration recommandées

#### 1. Vérification de l'intégrité

Avant toute intégration, vérifier l'empreinte SHA-256 de l'archive globale déclarée dans `MANIFEST.JSON`, puis valider les empreintes individuelles listées dans `CHECKSUMS.TXT`.

En cas d'échec, contacter le Contact Portabilité de l'éditeur sortant pour ré-émission sans frais supplémentaires.

#### 2. Lecture du manifeste

Lire `MANIFEST.JSON` pour déterminer :

* Le nombre de patients à importer (`patientCount`)
* Le statut de l'export (`COMPLETE` ou `PARTIAL`)
* En cas de `PARTIAL` : attendre le lot suivant avant d'importer les données historiques
* La liste des SUBSETs et les INS correspondantes

#### 3. Import des documents structurés

Pour chaque `SUBSET###/` :

1. Lire`METADATA.XML`pour obtenir la liste des`DocumentEntry`
1. Pour chaque`DocumentEntry`, récupérer le fichier via le champ`URI`(chemin relatif dans le SUBSET)
1. Importer les documents CDA R2 (VSM, documents Ségur) selon les volets CI-SIS correspondants

#### 4. Import des données spécifiques éditeur

Pour chaque `SPECIFIC/` :

1. Lire`mapping.json`pour comprendre la structure de chaque fichier
1. Importer les notes de consultation, l'agenda, les paramètres vitaux selon la documentation du dictionnaire de données
1. En cas d'impossibilité d'import automatique, présenter les données brutes au professionnel de santé pour saisie manuelle

#### 5. Traitement du SUBSET transverse

Importer les traces logicielles depuis `SUBSET_TR/` si nécessaire pour la continuité de la traçabilité.

-------

### Formats attendus par type de donnée

| | | |
| :--- | :--- | :--- |
| Synthèse médicale (VSM / IPS) | CDA R2 N3 + PDF/A-1 | Volet Synthèse Médicale CI-SIS |
| Documents Ségur | CDA R2 (N1 ou N3) + PDF/A-1 | Volet CI-SIS correspondant |
| Documents non structurés | PDF/A-1 typé avec métadonnées | DocumentEntry METADATA.XML |
| Notes de consultation | JSON ou XML documenté + PDF/A-1 | mapping.json du SPECIFIC/ |
| Paramètres vitaux | JSON documenté | mapping.json du SPECIFIC/ |
| Agenda | iCalendar RFC 5545 ou JSON | mapping.json du SPECIFIC/ |
| Prescriptions (hors CDA) | JSON documenté + PDF/A-1 | mapping.json du SPECIFIC/ |
| Traces logicielles | Syslog ou JSON | SUBSET_TR/mapping.json |

-------

### Gestion des patients sans INS qualifiée

Lorsque le `patientID` dans `METADATA.XML` indique un statut `PROV` ou `VIDE` :

* Créer le dossier patient avec l'identifiant disponible (NIR provisoire ou IPP source)
* Marquer le dossier pour qualification ultérieure de l'INS
* Ne pas bloquer l'import : la continuité des soins prime sur la qualité de l'identifiant

-------

### Accusé de réception

Après intégration, le fournisseur destinataire (ou le professionnel) émet un accusé de réception au fournisseur sortant par tout moyen traçable.

Cet AR déclenche :

* Le maintien de l'accès à l'export gratuit pendant **90 jours** (période de vérification)
* La suppression sécurisée de l'archive temporaire par l'éditeur sortant après les 90 jours

