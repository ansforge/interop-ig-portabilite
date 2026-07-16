# Structure de l'archive de portabilité - Portabilité des Données LGC v0.1.0

## Structure de l'archive de portabilité

L'archive de portabilité retient une structure de collection d'archives afin de limiter les impacts sur les mécanismes de génération et d'intégration d'archives XDM déjà implémentés par les éditeurs.

### Arborescence globale

L'archive de Portabilité est constituée de :

* 2 fichiers (`README.TXT` et `MANIFEST.XML`) permettant de lire le contenu et présentant un rapport d'intégrité ;
* 1 fichier de signature (`SIGN.XML`) attestant de l'authenticité et de l'imputabilité des données ;
* 1 répertoire de documentation (`DOCUMENTATION/`) permettant d'interpréter le contenu de l'archive (dictionnaires de données, dictionnaires des terminologies, jeux d'échantillon, mapping,…)
* 1 archive de données transverses (`TRANSVERSE/`) associées au professionnel et/ou à la structure
* 1 ou plusieurs archive(s) de patient (`PATNNNNN`), conformes au profil IHE XDM
* 1 répertoire de stockage de PDF pour consultation, inclus à la racine de l'archive XDM patient (extension du profil XDM)

```
PAAAAAMMJJThhmmss.ZIP               (Archive ZIP chapeau de portabilité, hors profil XDM)
│
├── README.TXT                      (Informations éditoriales et instructions)
├── MANIFEST.XML                    (Vue synthétique du contenu de l'archive de Portabilité et rapport d'intégrité)
├── SIGN.XML                        (Signature attestant de l'authenticité et de l'imputabilité des données)
│
├── DOCUMENTATION/                  (Archive de documentation)
│   ├── DICO001.XML                 (Dictionnaire de données 1)
│   ├── DICO002.JSON                (Dictionnaire de données 2)
│   ├── VALUESET.JSON               (Dictionnaire des terminologies propriétaires)
│   ├── MAPPING.JSON                (Dictionnaire des terminologies propriétaires)
│   ├── ECH001.ZIP                  (jeu d'échantillons)
│   └── ...
│
├── TRANSVERSE.ZIP                  (Archive de données transverse liées au professionnel et/ou à la structure)
│   ├── README.TXT                  
│   └── TRANSVERSE/
│        ├── AGENDA.ICS
│        ├── COMPTA.txt
│        ├── LOGS.CSV
│        └── ...
│
├── PAT00001.ZIP                    (Archive XDM Patient INS_1, conforme IHE_XDM)
│   ├── INDEX.HTM
│   ├── README.TXT
│   └── PDF/                        (Répertoire de stockage des PDF pour consultation, extension au profil XDM)
│   └── IHE_XDM/
│       └── SUBSET01/
│           ├── METADATA.XML
│           ├── DOC10001.XML
│           ├── DOC10002.XML
│           └── ...
│
└── PAT00002.ZIP                    (Archive XDM Patient INS_2, conforme IHE_XDM)
    ├── INDEX.HTM
    ├── README.TXT
│   └── PDF/                        (Répertoire de stockage des PDF pour consultation, extension au profil XDM)
    └── IHE_XDM/
        └── SUBSET01/
            ├── METADATA.XML
            ├── DOC20001.XML
            └── ...

```

### Conventions d'écritures des répertoires et des fichiers

**Format d'écriture**

Les noms des répertoires et des fichiers inclus dans l'archive Patient XDM doivent être conformes à la norme ISO 9660 niveau 1, comme défini dans le profil IHE_XDM :

* **format 8.3** : 8 caractères maximum pour le nom des fichiers et répertoires, 3 caractère pour l'extension des fichiers;
* **caractères limités** : lettres en majuscules, chiffres et trait de soulignement ("underscore" en anglais, signe typographique "_").

Il se peut que les noms des fichiers et des répertoires inclus dans l'archive soient différents de leurs noms d'origine. Par exemple, `CR_SER01.XML` aurait pour nom d'origine `Compte-rendu de sérologie du 10 mai 2013.xml`. Le fournisseur sortant doit alors assurer le transcodage et la traçabilité entre le nom d'origine des répertoires et des fichiers et le nom conforme à la norme ISO 9660 niveau 1 de ces mêmes répertoires et fichiers, lorsque ceux-ci sont copiés dans IHE_XDM. Cette traçabilité peut être obtenue en établissant une table de correspondance entre le nom d'origine du fichier ou du répertoire et son nom une fois copié dans IHE_XDM.

**En dehors des archives patients XDM, les noms des répertoires et fichiers ne sont pas soumis au format 8.3.**

**Conventions de nommage**

Le nom de l'archive de portabilité doit respecter le format `PAAAAAMMJJThhmmss.ZIP`, avec :

* PA = préfixe "Portabilité Archive"
* AAAAMMJJThhmmss = horodatage

Le nom des répertoires et sous-archives ZIP doit respecter le format suivant :

* `DOCUMENTATION/`: documentation d'export permettant au fournisseur sortant d'interpréter et d'intégrer les données ;
* `TRANSVERSE.ZIP` : contient les données transverses (logs, comptabilité, agenda,…) ;
* `PATNNNNN.ZIP` : contient les données d'un patient et est conforme au profil IHE_XDM, ou "NNNNN" est incrémenté à partir de 00001. Exemple : `PAT00183.ZIP`.

### MANIFEST.XML

Le fichier `MANIFEST.XML`, positionné à la racine de l'archive de portabilité, fournit une vue d'ensemble synthétique et exploitable par traitement automatisé du contenu global de l'export. Il complète le `README.TXT` de niveau chapeau, destiné à la lecture humaine. Il porte exclusivement sur le pilotage de la collection d'archives. Le détail des fichiers transportés est quant à lui décrit dans le fichier `METADATA.XML` de chaque lot de soumission.

Le `MANIFEST.XML` recense notamment :

* les informations générales de l'export ;
* les statistiques générales ;
* la liste des archives patients et transverses incluses avec leurs caractéristiques essentielles ;

**Exemple de MANIFEST.XML**

```
<?xml version="1.0" encoding="UTF-8"?>
<Manifest>
    <exportId>75249e6c-9779-4e57-bade-9978c2313ce9</exportId>
    <exportType>MASSIF</exportType>
    <exportStatus>COMPLETE</exportStatus>
    <comments>Export de données LGC répondant à la demande du Dr Dupond le 13 juin 2026</comments>
    <editeurSortant>
      <raisonSociale>Editeur Exemple de LGC</raisonSociale>
      <idNatStruc>175259803546</idNatStruct>
      <contact>
        <nom>Service Portabilité</nom>
        <email>portabilite@editeur.fr</email>
        <telephone>+33100000000</telephone>
      </contact>
    </editeurSortant>
    <PatientArchiveCount>2</PatientArchiveCount>
    <TransverseArchiveCount>1</TransverseArchiveCount>
    <Archives>
      <Archive>
        <type>Transverse</type>
        <archiveid>TRANSV</archiveid>
        <size>503</size>
        <hash>127e6fbfe24a750e72930c220a8e138275656b8e5d8f48a98c3c92df2caba935</hash>
      </Archive>
      <Archive>
        <type>Patient</type>
        <archiveid>PAT00001</archiveid>
        <patientId>1850615458136</patientId>
        <size>10652</size>
        <hash>152e6fbfc23a758e75930a220a7e138275256b8e5c8f48a97c3c92df2ccba945</hash>
      </Archive>
         <Archive>
          <type>Patient</type>
          <archiveid>PAT00002<archiveid>
          <patientId>1930707245385</patientId>
          <size>856</size>
          <hash>956e6fbfc56d758e75930a225d7e138275256c9e4c8f48a97c3c92ec2ccba945</hash>
        </Archive>
    </Archives>
</Manifest>

```

### README.TXT

Le fichier README.TXT est indépendant du contenu clinique de l'archive. Il contient des informations éditoriales dont le caractère obligatoire relève du fournisseur sortant, conformément au volume 2b du cadre technique ITI :

* point de contact du fournisseur sortant ayant créé l'archive ;
* nom et version du logiciel ayant créé l'archive ;
* informations générales sur la structure de l'archive (ces informations n'ont pas vocation à être spécifique au contenu stocké dans l'archive) ;
* instructions permettant de visualiser les documents joints, dans le cas ou un viewer est transmis (ex. visualisation des documents de santé enregistrés avec leur feuille de style dans un même répertoire).

Le contenu du README.TXT est codé en ASCII 7 bits avec le retour chariot codé en CRLF.

Deux niveaux de `README.TXT` coexistent dans l'archive de Portabilité :

* un fichier à la racine de l'archive chapeau de portabilité. Ce document complète le MANIFEST.XML et fournit au destinataires les instructions générales sur le contenu de l'archive de portabilité, les modalités d'accès aux documents et, le cas échéant, les informations utiles à leur consultation;
* un README.TXT au niveau de chaque archive XDM Patient, imposé par le profil IHE_XDM. Il précise la structure propre à chaque archive XDM (différente de celle de l'archive de portabilité)

**Exemple de README.TXT de l'archive de portabilité**

```
Fournisseur Sortant :
=============
    . IdNatStruct : 175259803546
    . raisonSociale : Editeur Exemple de LGC
    . Contact de Portabilité : service Portabilité
        . email : portabilite@editeur.fr
        . Téléphone : +33100000000

Application du fournisseur sortant :
=========================
    . Nom : LGC example
    . Version : 1.2

Instructions :
=============
. Consultez les fichiers de documentation accessibles dans le répertoire DOCUMENTATION\ pour interpréter les données

Arborescence :
============
     README.TXT
     MANIFEST.XML
     + DOCUMENTATION
     + TRANSVERSE.ZIP
        + README.TXT
        + TRANVERSE.ZIP
            DICO001.XML
            DICOOO2.XML
            VALUESET.JSON
            MAPPING.JSON
            ECH001.ZIP
        + PAT00001.ZIP
        + PAT00002.ZIP

```

**Exemple de README.TXT d'une archive Patient**

```
Fournisseur Sortant :
=============
    . IdNatStruct : 175259803546
    . raisonSociale : Editeur Exemple de LGC
    . Contact de Portabilité : service Portabilité
        . email : portabilite@editeur.fr
        . Téléphone : +33100000000

Application du fournisseur sortant :
=========================
    . Nom : LGC example
    . Version : 1.2

Instructions :
=============
. Consultez les fichiers de documentation accessibles dans le répertoire DOCUMENTATION\ pour interpréter les données

Arborescence :
============
     README.TXT
     INDEX.HTM
     + IHE_XDM
        + SUBSET01
        + README.TXT
            METADATA.XML
            DOC10001.XML
            DOC10002.XML


```

### METADATA.XML

### INDEX.HTM

Le fichier INDEX.HTM est imposé par le profil IHE_XDM à la racine d'une archive XDM. Il renferme des informations éditoriales et est conforme aux spécifications XHTML et [Echanges de Documents de santé](https://esante.gouv.fr/annexe-sources-des-donnees-personnes-et-structures). Il contient :

* l'identification obligatoire du fournisseur sortant ayant créé le media : StructIdNat (identifiant de stucture de santé) et StructNom (nom de la structure) ;
* l'avertissement optionnel de cette institution concernant la sécurité et la confidentialité;
* un lien vers le fichier README.TXT.

**Exemple de fichier INDEX.HTM** :

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    Emetteur : LGC Exemple (3859645252)
    Voir le fichier <a href="README.TXT">ReadMe</a>
</html>

```

