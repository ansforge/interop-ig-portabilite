L'archive `PATNNNNN.ZIP`contient les répertoires `IHE_XDM/` et `PDF/` ainsi que les fichiers `INDEX.HTM` et `README.TXT`.

Le modèle logique associé à cette archive est consultable <a href="StructureDefinition-pdlgc-archive-patient.html">ici</a>

<br>

#### `INDEX.HTM`

Le fichier `INDEX.HTM` est imposé par le profil IHE_XDM à la racine d'une archive XDM. Il renferme des informations éditoriales et est conforme aux spécifications XHTML et [Echanges de Documents de santé](https://esante.gouv.fr/annexe-sources-des-donnees-personnes-et-structures). Il contient : 
- l'identification obligatoire du fournisseur sortant ayant créé le media : StructIdNat (identifiant de stucture de santé) et StructNom (nom de la structure) ; 
- l'avertissement optionnel de cette institution concernant la sécurité et la confidentialité; 
- un lien vers le fichier README.TXT.

**Modèle logique**

Le modèle logique associé au fichier INDEX.HTM est consultable <a href="StructureDefinition-pdlgc-index.html">ici</a>


**Exemple de fichier INDEX.HTM** : 

```html
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    Emetteur : LGC Exemple (3859645252)
    Voir le fichier <a href="README.TXT">ReadMe</a>
</html>
```
<br>

#### `README.TXT`

Ce `README.TXT` suit la même trame que le `README.TXT` de l'archive de portabilité et les archives Patient. Voir section <a href="struct-main-structure-archive.html#readme">README.TXT de l'archive de portabilité</a>.
Ce fichier est imposé par le profil IHE_XDM et précise la structure propre à chaque archive XDM (différente de l'archive de portabilité).

**Modèle logique**

Le modèle logique associé au fichier README.TXT est consultable <a href="StructureDefinition-pdlgc-readme.html">ici</a>

**Exemple de README.TXT d'une archive Patient**

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
<br>

#### Répertoire `IHE_XDM/`

Ce répertoire `IHE_XDM` contient un sous-répertoire `SUBSET01 contenant l'ensemble des documents transmis : 
- le ou les documents de données administratives et médicales du patient ;
- le document METADATA.XML obligatoire, contenant les métadonnées XDS, représentations logiques du lot de documents.

<br>

#### Répertoire `PDF/`

Le répertoire `PDF/`, positionné à la racine de l'archive XDM, constitue une extension au profil IHE_XDM. Il regroupe une version PDF des documents structurés contenus dans le répertoire `IHE_XDM/` destinée exclusivement à la consultation humaine. Ces fichiers ne sont pas destinés à être exploités par un système d'information et ne se substituent en aucun cas aux documents structurés, qui demeurent la source de référence pour les traitements automatisés.

Le nommage des fichiers PDF doit pouvoir permettre d'établir sans ambiguïté la correspondance avec le document structuré auquel ils se rapportent.

<br>

#### `METADATA.XML`

Conformément au profil IHE XDM, chaque archive XDM Patient contient, dans son sous-répertoire `SUBSET01`, un fichier `METADATA.XML` structuré selon le modèle de métadonnées XDS-like (lot de soumission, fiches et associations). Certaines contraintes sont appliquées à ce fichier pour s'adapter au contexte de portabilité LGC.

La construction de ce fichier est détaillée dans les spécifications <a href="https://esante.gouv.fr/volet-echange-de-documents-de-sante">Echanges des documents de Santé</a>.

**Modèle logique**

Le modèle logique associé au fichier METADATA.XML est consultable <a href="StructureDefinition-pdlgc-metadata.html">ici</a>

**Exemple de METADATA.XML d'une archive XDM**

De nombreux exemples de fichiers METADATA sont accessibles sur le repository GitHub ANS <a href="https://github.com/ansforge/interop-exemples-xdm">interop-exemples-xdm</a>.