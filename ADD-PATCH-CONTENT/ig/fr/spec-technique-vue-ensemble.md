# Structure de l'archive - Portabilité des Données LGC v1.0.0

## Structure de l'archive

### Architecture technique — Vue d'ensemble

La portabilité des données des LGC repose sur le profil **IHE XDM (Cross-Enterprise Document Media Interchange)** comme format d'échange universel. Ce profil garantit une archive auto-portante, lisible sans logiciel métier, et interopérable entre tous les éditeurs.

Les données structurées utilisent les standards du **CI-SIS** (CDA R2, FHIR) et les terminologies de référence françaises publiées dans les **NOS** (Nomenclatures des Objets de Santé).

-------

### Structure de l'archive de portabilité

L'archive est fournie sous forme d'un fichier ZIP respectant la spécification **IHE ITI XDM (ITI-32)**, étendue pour le contexte multi-patients de la portabilité LGC.

#### Arborescence globale

```
├── INDEX.HTM                        ← Index IHE XDM (obligatoire, ISO 9660)
├── INDEX.HTML                       ← Navigation visuelle sans logiciel (extension portabilité)
├── README.TXT                       ← Description du contenu (obligatoire)
├── MANIFEST.JSON                    ← Manifeste global (nombre de patients, statut, hash)
├── CHECKSUMS.TXT                    ← Empreintes SHA-256 de tous les fichiers
├── EXPORT_DOC/                      ← Documentation d'export (dictionnaire, schémas, échantillons)
│   ├── dictionnaire_donnees.json
│   ├── schemas/
│   └── samples/
└── IHE_XDM/
    ├── SUBSET001/                   ← Un SUBSET par patient
    │   ├── METADATA.XML             ← Métadonnées XDS (SubmitObjectsRequest)
    │   ├── DOC00001.XML             ← VSM CDA R2 N3 (Synthèse IPS)
    │   ├── DOC00002.PDF             ← Rendu PDF/A du VSM
    │   ├── DOC00003.XML             ← Document Ségur CDA
    │   ├── DOC00004.PDF             ← Document non structuré
    │   └── SPECIFIC/                ← Données éditeur hors standard (notes, agenda, logs)
    │       ├── notes.json
    │       ├── agenda.ics
    │       └── mapping.json         ← Documentation de mapping (obligatoire)
    ├── SUBSET002/
    │   └── ...
    └── SUBSET_TR/                   ← SUBSET transverse (traces, données non rattachées à un patient)
        ├── METADATA.XML
        └── logs.json

```

#### Règles de nommage (conformité ISO 9660 Level 1)

* Noms de fichiers en **MAJUSCULES**
* Maximum **8 caractères** + `.` + **3 caractères** d'extension
* Pas d'espaces, accents ni caractères spéciaux
* Les sous-dossiers `SPECIFIC/` sont une **extension portabilité** non prévue par IHE XDM standard — leur présence doit être documentée dans `mapping.json`

-------

### MANIFEST.JSON

Le manifeste global est le point d'entrée de l'archive. Il permet au destinataire de vérifier la complétude de l'export avant intégration.

```
{
  "exportId": "uuid-...",
  "editorName": "Nom de l'éditeur",
  "editorSIRET": "12345678900000",
  "exportDate": "2026-06-21T10:00:00Z",
  "exportContext": "MIGRATION",
  "exportStatus": "COMPLETE",
  "batchNumber": 1,
  "totalBatches": 1,
  "patientCount": 1500,
  "subsets": [
    {
      "path": "IHE_XDM/SUBSET001",
      "patientINS": "1234567890123",
      "insStatus": "VALI",
      "hash": "sha256:abc123..."
    }
  ],
  "contactPortabilite": {
    "name": "Contact Portabilité",
    "email": "portabilite@editeur.fr",
    "phone": "+33123456789"
  }
}

```

| | | | |
| :--- | :--- | :--- | :--- |
| Valeurs de`exportContext`:`PATIENT` | `CONFRERE` | `MIGRATION` | `RETRAITE` |

| | |
| :--- | :--- |
| Valeurs de`exportStatus`:`COMPLETE` | `PARTIAL`(livraison en plusieurs lots) |

-------

### Contenu de METADATA.XML (par SUBSET)

Le fichier `METADATA.XML` de chaque SUBSET est conforme à la spécification IHE XDS. Il contient un `SubmitObjectsRequest` (ebXML) décrivant le SubmissionSet et les DocumentEntries associés.

| | | |
| :--- | :--- | :--- |
| `patientID` | Identifiant du patient | Matricule INS (OID`1.2.250.1.213.1.4.8`) |
| `sourceID` | Identifiant du système émetteur | SIRET de l'éditeur sortant |
| `uniqueId` | Identifiant unique du document (OID) | OID généré par l'éditeur |
| `classCode` | Classe du document | JDV_J06-XdsClassCode-CISIS |
| `typeCode` | Type du document | JDV_J07-XdsTypeCode-CISIS |
| `formatCode` | Format du document | JDV_J10-XdsFormatCode-CISIS |
| `confidentialityCode` | Niveau de confidentialité | JDV_J58-ConfidentialityCode-DMP |
| `availabilityStatus` | Statut de disponibilité | Fixé à`Approved`(archive figée) |
| `URI` | Chemin relatif du fichier dans le SUBSET | Ex :`DOC00001.XML` |

