L'archive `TRANSVERSE.ZIP` est dédiée aux données transverses associées au cabinet ou au praticien, et ne relevant pas d'un dossier patient individuel. 

<br>

#### `README.TXT` de l'archive `TRANSVERSE.ZIP`

Ce `README.TXT` suit la même trame que le `README.TXT` de l'archive de portabilité et les archives Patient. Voir section <a href="specs-main-structure-archive.html#readme">README.TXT de l'archive de portabilité</a>

**Modèle logique**

Le modèle logique associé au fichier README.TXT est consultable <a href="StructureDefinition-pdlgc-readme.html">ici</a>

**Exemple de `README.TXT` d'une archive transverse**

```txt
Fournisseur Sortant :
=============
    . IdNatStruct : 175259803546
    . raisonSociale : Editeur Exemple de LGC
    . Contact de Portabilité : service Portabilité
        . email : portabilite@editeur.fr
        . Téléphone : +33100000000

Application de l'éditeur émetteur :
=========================
    . Modèle : LGC modèle
    . Nom : LGC example
    . Version : 1.2
    . Identifiant : 175259803546/2789345815

Instructions :
=============
. Consultez les fichiers de documentation accessibles dans le répertoire DOCUMENTATION\ pour interpréter les données

Arborescence :
============
     README.TXT
     + TRANSVERSE
        AGENDA.ICS
│       COMPTA.txt
│       LOGS.CSV

```

<br>

#### Sous-répertoire `TRANSVERSE`

Ce sous-répertoire regroupe les données propres au cabinet ou au praticien exporté : agenda, données de gestion, traces, logs d'activité,... 
La liste des fichiers effectivement présents dépend du périmètre de l'export (se référer au **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC**) et des données disponibles dans le logiciel source.