# Flux d'export - Portabilité des Données LGC v1.0.0

## Flux d'export

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Flux d'export — Spécifications techniques

Cette page décrit les flux techniques entre le Fournisseur Sortant et le Fournisseur Destinataire (ou le professionnel de santé) lors d'une opération de portabilité.

-------

### Vue d'ensemble des flux

```
Professionnel de Santé / Patient
        │
        │  Demande d'export (interface LGC, email, ticket support)
        ▼
┌────────────────────────┐
│   Fournisseur Sortant  │
│      (LGC source)      │
├────────────────────────┤
│  Flux 1 : Demande      │──── Accusé de réception (< 48h ouvrées) ────► PS
│  Flux 2 : Export       │──── Archive XDM sécurisée ─────────────────► PS / Destinataire
└────────────────────────┘
                                        │
                                        │  Import de l'archive (Flux 3)
                                        ▼
                           ┌────────────────────────────┐
                           │  Fournisseur Destinataire  │
                           │       (LGC cible)          │
                           └────────────────────────────┘
                                        │
                                        │  Accusé de réception (Flux 4)
                                        ▼
                                  Fournisseur Sortant

```

-------

### Flux 1 — Demande d'export et accusé de réception

**Description** : Le professionnel de santé (ou son mandataire) adresse une demande formelle d'export au fournisseur sortant.

**Entrée** : Demande datée par tout moyen donnant date certaine (email, ticket support, interface LGC, lettre recommandée).

**Sortie** : Accusé de réception précisant :

* La date prévisionnelle de mise à disposition de l'archive
* Le canal de transmission retenu (lien sécurisé, API, plateforme HDS)
* Les coordonnées du Contact Portabilité

**Délai** : < **48 heures ouvrées**

**Règle** : Le fournisseur sortant ne peut refuser de traiter la demande pour motif commercial (litige, impayé, période d'engagement en cours).

-------

### Flux 2 — Génération et livraison de l'archive

**Description** : Le fournisseur sortant génère l'archive de portabilité conforme au profil IHE XDM étendu et la met à disposition.

**Entrée** : Demande d'export validée (Flux 1).

**Sortie** : Archive ZIP conforme à la structure définie dans [Vue d'ensemble technique](spec-technique-vue-ensemble.md) contenant :

| | | |
| :--- | :--- | :--- |
| `INDEX.HTM` | Oui | Index IHE XDM |
| `INDEX.HTML` | Oui | Navigation visuelle sans logiciel |
| `README.TXT` | Oui | Description du contenu |
| `MANIFEST.JSON` | Oui | Manifeste global (patients, hash, statut) |
| `CHECKSUMS.TXT` | Oui | Empreintes SHA-256 de tous les fichiers |
| `EXPORT_DOC/` | Oui | Documentation d'export (dictionnaire, schémas) |
| `IHE_XDM/SUBSET###/` | Oui (1 par patient) | Données et métadonnées par patient |
| `IHE_XDM/SUBSET_TR/` | Si traces disponibles | Données transverses |

**Délais** :

| | |
| :--- | :--- |
| Export unitaire (patient, confrère) | Immédiat (self-service) |
| Export en masse (migration, retraite) | 30 jours calendaires |

-------

### Flux 3 — Import par le Fournisseur Destinataire

**Description** : Le fournisseur destinataire intègre l'archive reçue dans son LGC.

**Entrée** : Archive IHE XDM conforme au présent guide.

**Sortie** : Données du patient disponibles dans le LGC destinataire.

**Obligations** :

* Obligation de **moyens** (pas de résultat) dès lors que le format est conforme
* Proposer un environnement de test (sandbox) pour la validation préalable du format

**Étapes recommandées** :

1. Vérifier l'empreinte SHA-256 de l'archive (via`CHECKSUMS.TXT`)
1. Lire`MANIFEST.JSON`pour connaître le nombre de patients et le statut de l'export
1. Parcourir les SUBSETs et importer les documents CDA structurés
1. Importer les données du dossier`SPECIFIC/`en utilisant le`mapping.json`

-------

### Flux 4 — Accusé de réception de l'import

**Description** : Le fournisseur destinataire ou le professionnel confirme la bonne réception et l'intégrité de l'archive.

**Sortie** : Confirmation transmise au fournisseur sortant.

**Effets** :

* Déclenche la période de **90 jours** pendant laquelle le fournisseur sortant maintient l'accès à l'export gratuit
* Au-delà, les données sont conservées en archivage intermédiaire pour **2 ans minimum**

-------

### Diagramme de séquence

```
PS/Patient        Fournisseur Sortant       Fournisseur Destinataire
    │                     │                          │
    │── Demande export ───►│                          │
    │                     │                          │
    │◄── AR (< 48h) ──────│                          │
    │                     │                          │
    │                     │── Génération archive XDM │
    │                     │   (30j max pour masse)   │
    │                     │                          │
    │◄── Archive dispo ───│                          │
    │    (lien sécurisé)  │                          │
    │                     │                          │
    │── Téléchargement ───►│                          │
    │   + vérif. hash     │                          │
    │                     │                          │
    │── Transfert archive ──────────────────────────►│
    │                     │                          │
    │                     │◄── Accusé de réception ──│
    │◄── Confirmation ────│                          │
    │                     │                          │
    │                     │── Maintien accès 90j     │

```

-------

### Cas particulier — Livraison fractionnée

Pour les structures de grande taille :

1. **Lot 1 (prioritaire)**: Périmètre Pivot complet, données actives < 2 ans — livré dans les 30 jours.`MANIFEST.JSON`:`exportStatus: PARTIAL`,`batchNumber: 1`.
1. **Lot 2 (complémentaire)**: Données historiques — selon calendrier convenu.`exportStatus: COMPLETE`,`batchNumber: 2`.

Le plan de migration phasé est fourni sous **7 jours** à compter de la demande.

