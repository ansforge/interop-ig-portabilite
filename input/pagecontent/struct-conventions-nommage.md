**Format de nommage pour les fichiers et répertoire des archives XDM**

Les noms des répertoires et des fichiers inclus dans l'archive Patient XDM doivent être conformes à la norme ISO 9660 niveau 1, comme défini dans le profil IHE_XDM : 
- **format 8.3** : 8 caractères maximum pour le nom des fichiers et répertoires, 3 caractère pour l'extension des fichiers;
- **caractères limités** : lettres en majuscules, chiffres et trait de soulignement ("underscore" en anglais, signe typographique "_"). 

Il se peut que les noms des fichiers et des répertoires inclus dans l'archive soient différents de leurs noms 
d'origine. Par exemple, `CR_SER01.XML` aurait pour nom d'origine `Compte-rendu de sérologie du 10 mai 2013.xml`. Le fournisseur sortant doit alors assurer le transcodage et la traçabilité entre le nom d'origine des répertoires et des fichiers et le nom conforme à la norme ISO 9660 niveau 1 de ces mêmes répertoires et fichiers, lorsque ceux-ci sont copiés dans IHE_XDM. Cette traçabilité peut être obtenue en établissant une table de correspondance entre le nom d'origine du fichier ou du répertoire et son nom une fois copié dans IHE_XDM. 

<br>

**Format de nommage pour les fichiers et répertoires de l'archive de portabilité, hors archives XDM**

En dehors des archives patients XDM, les noms des répertoires et fichiers ne sont pas soumis au format 8.3.

<br>

**Conventions de nommage**

Le nom de l'archive de portabilité doit respecter le format `PAAAAAMMJJThhmmss.ZIP`, avec : 
- PA = préfixe "Portabilité Archive"
- AAAAMMJJThhmmss = horodatage 

Le nom des répertoires et sous-archives ZIP doit respecter le format suivant : 
- `DOCUMENTATION/`: documentation d'export permettant au fournisseur sortant d'interpréter et d'intégrer les données ;
- `TRANSVERSE.ZIP` : contient les données transverses (logs, comptabilité, agenda,...) ;
- `PATNNNNN.ZIP` : contient les données d'un patient et est conforme au profil IHE_XDM, ou "NNNNN" est incrémenté à partir de 00001. Exemple : `PAT00183.ZIP`.

