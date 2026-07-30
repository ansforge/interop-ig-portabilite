Le fichier README.TXT est indépendant du contenu clinique de l'archive. Il contient des informations éditoriales dont le caractère obligatoire du système émetteur, conformément au volume 2b du cadre technique ITI : 
- point de contact de l'éditeur émetteur ayant créé l'archive ; 
- nom et version du logiciel ayant créé l'archive ; 
- informations générales sur la structure de l'archive (ces informations n'ont pas vocation à être spécifique au contenu stocké dans l'archive) ;
- instructions permettant de visualiser les documents joints, dans le cas ou un viewer est transmis (ex. visualisation des 
documents de santé enregistrés avec leur feuille de style dans un même répertoire).
 
Le contenu du README.TXT est codé en ASCII 7 bits avec le retour chariot codé en CRLF.

Deux niveaux de `README.TXT` coexistent dans l'archive de Portabilité : 
- un fichier à la racine de l'archive chapeau de portabilité. Ce document complète le MANIFEST.XML et fournit aux destinataires les informations générales sur le contenu de l'archive de portabilité, les modalités d'accès aux documents et, le cas échéant, les informations utiles à leur consultation;
- un README.TXT au niveau de chaque archive XDM Patient et de l'archive de données transverse.

**Modèle logique**

Le modèle logique associé au fichier `README.TXT` est consultable <a href="StructureDefinition-pdlgc-readme.html">ici</a>

**Exemple de `README.TXT` de l'archive de portabilité**

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
     MANIFEST.XML
     + DOCUMENTATION
        DICO001.XML
        DICOOO2.XML
        VALUESET.JSON
        MAPPING.JSON
        ECH001.ZIP     
     + TRANSVERSE.ZIP
     + PAT00001.ZIP
     + PAT00002.ZIP
```