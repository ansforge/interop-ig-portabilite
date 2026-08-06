**Format de nommage pour les fichiers et répertoire des lots de soumission (`SUBSET`) des archives XDM**

Les noms des répertoires et des fichiers inclus dans l'archive Patient XDM doivent être conformes à la norme ISO 9660 niveau 1, comme défini dans le profil IHE_XDM : 
- **format 8.3** : 8 caractères maximum pour le nom des fichiers et répertoires, 3 caractère pour l'extension des fichiers;
- **caractères limités** : lettres en majuscules, chiffres et trait de soulignement ("underscore" en anglais, signe typographique "_"). 

Afin de respecter ce format, les noms des fichiers et des répertoires de documents multifichiers peuvent être différents de leurs noms d'origine. Par exemple, `CR_SER01.XML` aurait pour nom d'origine `Compte-rendu de sérologie du 10 mai 2013.xml`. Le système émetteur doit alors assurer le transcodage et la traçabilité entre le nom d'origine des répertoires et des fichiers et le nom conforme à la norme ISO 9660 niveau 1 de ces mêmes répertoires et fichiers, lorsque ceux-ci sont copiés dans IHE_XDM. 
Cette traçabilité est obtenue en exploitant la métadonnées XDS `typeCodeDisplayName` pour enregistrer le nom d'origine.

<br>

**Format de nommage pour les fichiers du répertoire `PDF` des archives XDM**

Les documents PDF de ce répertoire étant destinés à une lecture humaine, ils DOIVENT respecter la convention de nommage suivante, afin de faciliter l’identification des documents de santé : `<date de l’acte>_<type document>_<NOM>_<prenom>_<numéro de dossier>.pdf`
Tous les champs sont obligatoires à l’exception du champ `<numéro de dossier>` qui est optionnel.

Avec : 
- `<date de l’acte>` : date à laquelle l’acte a été réalisé (AAAAMMJJ). Correspond à la métadonnée XDS `serviceStartTime` du document structuré équivalent ; 
- `<type document>` : métadonnée XDS `typeCodeDisplayName` du document structuré équivalent. Pour une meilleure lisibilité du nom du PDF, ce libellé doit être tronqué à 40 caractères, si sa longueur est supérieure ;
- `<NOM>` : nom de naissance de l’usager en majuscule, si disponible. Sinon renseigner avec le nom usuel ;  
- `<prenom>` : prénom de l’usager ;
- `<numéro de dossier>` : numéro d’identification propre à l’émetteur et partagé avec le destinataire. Pour les comptes rendus d’examens de biologie, il correspond au numéro d’enregistrement de la prescription initiale reçue par le laboratoire principal ;
- « _ » : caractère underscore (ASCII - décimal 95).


**Format de nommage pour les fichiers et répertoires de l'archive de portabilité, hors archives XDM**

En dehors des répertoires et fichiers de l'archive Patient XDM, les noms des répertoires et fichiers ne sont pas soumis au format 8.3.

<br>

**Conventions de nommage**

Le nom de l'archive de portabilité doit respecter le format `<PA><AAAAMMJJThhmmss>.ZIP`, avec : 
- PA = préfixe "Portabilité Archive"
- AAAAMMJJThhmmss = horodatage avec AAAA = année, MM = mois, JJ = jour, T = "T" (séparateur de date et heure), hh = heure, mm = minutes, ss = secondes

Le nom des répertoires et sous-archives ZIP doit respecter le format suivant : 
- `DOCUMENTATION/`: documentation d'export permettant à l'éditeur émetteur d'interpréter et d'intégrer les données ;
- `TRANSVERSE.ZIP` : archive contenant les données transverses (logs, comptabilité, agenda,...) ;
- `TRANSVERSE/` : répertoire contenant les données transverses (logs, comptabilité, agenda,...) ;
- `PATNNNNN.ZIP` : contient les données d'un patient et est conforme au profil IHE_XDM, ou "NNNNN" est incrémenté à partir de 00001. Exemple : `PAT00183.ZIP`;
- `PDF`: sous-répertoire de l'archive patient contenant les documents PDF/A-1 destinés à la consultation humaine ;
- `IHE_XDM`et `SUBSET01`: sous-répertoires de l'archive XDM contenant les documents d'un patient.