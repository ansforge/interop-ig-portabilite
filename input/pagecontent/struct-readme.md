Le fichier README.TXT est indépendant du contenu clinique de l'archive. Il contient des informations éditoriales dont le caractère obligatoire relève du fournisseur sortant, conformément au volume 2b du cadre technique ITI : 
- point de contact du fournisseur sortant ayant créé l'archive ; 
- nom et version du logiciel ayant créé l'archive ; 
- informations générales sur la structure de l'archive (ces informations n'ont pas vocation à être spécifique au contenu stocké dans l'archive) ;
- instructions permettant de visualiser les documents joints, dans le cas ou un viewer est transmis (ex. visualisation des 
documents de santé enregistrés avec leur feuille de style dans un même répertoire).
 
Le contenu du README.TXT est codé en ASCII 7 bits avec le retour chariot codé en CRLF.

Deux niveaux de `README.TXT` coexistent dans l'archive de Portabilité : 
- un fichier à la racine de l'archive chapeau de portabilité. Ce document complète le MANIFEST.XML et fournit au destinataires les instructions générales sur le contenu de l'archive de portabilité, les modalités d'accès aux documents et, le cas échéant, les informations utiles à leur consultation;
- un README.TXT au niveau de chaque archive XDM Patient, imposé par le profil IHE_XDM. Il précise la structure propre à chaque archive XDM (différente de celle de l'archive de portabilité)

** Exemple de README.TXT de l'archive de portabilité**

```txt
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


**Exemple de README.TXT d'une archive Patient **

```txt
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