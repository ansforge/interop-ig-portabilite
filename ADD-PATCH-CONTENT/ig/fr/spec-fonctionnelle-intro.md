# Contexte fonctionnel et périmètre - Portabilité des Données LGC v1.0.0

## Contexte fonctionnel et périmètre

### Contexte fonctionnel

La portabilité des données de santé s'applique dès lors qu'un professionnel de santé exerçant en cabinet libéral souhaite transférer les données de sa patientèle depuis un Logiciel de Gestion de Cabinet (LGC) vers un autre système, ou les mettre à disposition d'un patient ou d'un confrère.

Le présent volume décrit le contexte fonctionnel, les acteurs, les scénarios d'usage et le périmètre des données concernées.

### Acteurs

| | |
| :--- | :--- |
| **Fournisseur Sortant** | Éditeur du LGC dont le contrat prend fin ou depuis lequel l'utilisateur souhaite exporter ses données. C'est lui qui est redevable de l'obligation de portabilité gratuite du Périmètre Pivot sous 30 jours calendaires. |
| **Fournisseur Destinataire** | Éditeur recevant les données en vue de leur intégration. Tenu d'une obligation de**moyens**(pas de résultat) pour l'import, dès lors que le format est conforme au référentiel. |
| **Professionnel de Santé** | Médecin ou professionnel de santé libéral, demandeur de l'export et responsable du contenu médical transféré. |
| **Patient** | Bénéficiaire de ses droits de portabilité individuelle (RGPD Art. 20, Art. L.1111-7 CSP). Peut demander directement l'export de ses données. |

### Scénarios d'usage

#### Scénario 1 — Export unitaire à destination du Patient

Le patient exerce son droit d'accès à ses données de santé.

**Déclencheur** : Demande explicite du patient auprès du professionnel de santé ou directement auprès de l'éditeur.

**Périmètre exporté** :

* Données d'identité et administratives (avec ou sans INS qualifiée)
* Données médicales structurées (Synthèse IPS / VSM CDA R2 N3)
* Documents produits ou importés (CR imagerie, biologie, courriers, scans)
* Paramètres vitaux (constantes)
* Notes de consultation
* Historique des prescriptions

**Données exclues par défaut** :

* Notes personnelles du professionnel (non partagées sans accord explicite)
* Agenda
* Traces logicielles

**Contraintes** :

* Format lisible sans logiciel métier (PDF/A obligatoire en complément des formats structurés)
* Export déclenché sans délai (immédiat si export en autonomie)
* Gratuit

-------

#### Scénario 2 — Export unitaire vers un Confrère

Un professionnel de santé transfère la prise en charge d'un ou plusieurs patients à un confrère (remplacement, départ, transfert partiel de patientèle).

**Déclencheur** : Demande du professionnel de santé sortant, avec accord du patient le cas échéant.

**Périmètre exporté** :

* Tout le périmètre du scénario 1
* Notes de consultation cliniques
* Agenda (rendez-vous passés et à venir)
* Notes personnelles (au choix explicite du médecin)

**Contraintes** :

* Format permettant l'import automatisé sans perte de sens sémantique
* Gratuit
* Export déclenché sans délai

-------

#### Scénario 3 — Export en masse (Migration / Changement d'éditeur / Retraite)

Le professionnel de santé change d'éditeur LGC ou cesse son activité.

**Déclencheur** : Résiliation du contrat ou demande formelle de migration.

**Périmètre exporté** (périmètre complet) :

* Toutes les données des scénarios 1 et 2
* Notes personnelles (incluses par défaut, désactivables par le médecin)
* Traces logicielles (audit logs)
* Historique complet des rendez-vous

**Contraintes** :

* Délai maximal : **30 jours calendaires** à compter de la demande formelle
* Accusé de réception sous **48 heures ouvrées**
* Pour les grandes structures (volume > 2 ans d'historique difficile à livrer sous 30 jours) : plan de migration phasé fourni sous 7 jours, première livraison (données actives < 2 ans) dans le délai initial
* Gratuit pour une opération par changement de fournisseur

-------

### Périmètre Pivot — données obligatoires

Le tableau ci-dessous synthétise les obligations d'export et d'import par catégorie de données, conformément à l'Annexe 1 du référentiel.

| | | | |
| :--- | :--- | :--- | :--- |
| **Identité patient** | Traits d'identité avec INS (qualifiée ou non), coordonnées, personnes de contact, PS correspondants | Obligatoire | Obligatoire |
| **Synthèse médicale** | ATCD, allergies, pathologies, traitements, facteurs de risque | Obligatoire | Obligatoire |
| **Documents** | CR imagerie, biologie, courriers, scans (produits ou importés) | Obligatoire | Obligatoire |
| **Clinique — Notes de consultation** | Notes structurées ou libres par consultation | Obligatoire | Obligatoire |
| **Clinique — Paramètres vitaux** | Constantes (poids, TA, FC, SpO2…) | Obligatoire | Obligatoire |
| **Clinique — Notes personnelles** | Notes privées du professionnel, non partagées | Obligatoire | Optionnel |
| **Prescriptions** | Historique des ordonnances et dispensations | Obligatoire | Obligatoire |
| **Agenda** | Rendez-vous à venir (planning) | Obligatoire | Obligatoire |
| **Agenda** | Historique des rendez-vous passés | Obligatoire | Optionnel |
| **Traces** | Traces logicielles (audit logs) | Obligatoire | Non requis |

> Ces données ne font l'objet d'une obligation d'export que si elles sont disponibles dans le logiciel à la date d'export.

**Éléments explicitement exclus du Périmètre Pivot :**

* Correspondance MSS (seuls les documents ayant été importés dans le dossier patient sont concernés)
* Configuration et paramétrage du logiciel (modèles de documents, d'ordonnances propres à l'éditeur)
* Feuilles de Soins Électroniques (FSE), supprimables après 3 mois selon les recommandations CNIL

### Règles de gestion fonctionnelles

**RG-01** : L'éditeur sortant ne peut subordonner l'export à aucune condition autre que la vérification d'identité du demandeur.

**RG-02** : L'export du Périmètre Pivot est gratuit, y compris en cas de litige commercial entre l'éditeur et le professionnel.

**RG-03** : La distinction entre une donnée « non renseignée » et une donnée « négative » (ex : absence confirmée d'allergie) doit être maintenue dans l'export.

**RG-04** : Les notes personnelles du professionnel ne sont pas incluses par défaut dans un export vers le patient. Leur inclusion dans les exports confrère/migration relève du choix explicite du médecin.

**RG-05** : En cas de scission ou de départ d'un praticien d'une structure collective, la portabilité s'exerce sur l'intégralité du dossier médical des patients rattachés au professionnel partant (médecin traitant/référent).

