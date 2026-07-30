Le fichier `SIGN.XML`, positionné à la racine de l'archive de portabilité, contient la signature électronique de l'archive conformément au format XAdES. Il garantit l'intégrité de l'ensemble des fichiers de données LGC constituant l'archive et permet de vérifier l'identité du signataire ainsi que l'imputabilité de la production de l'archive. Les fichiers à vocation documentaire (README, documentation technique, schémas, exemples, etc.) ne sont pas couverts par la signature électronique.

Le fichier est destiné à être traité automatiquement par le système destinataire lors de l'import de l'archive.

Le `SIGN.XML` contient notamment :
- les références vers les fichiers signés ;
- les empreintes cryptographiques des fichiers référencés ;
- la valeur de la signature ;
- le certificat électronique utilisé pour la signature ;
- les propriétés XAdES nécessaires à la validation de la signature.

Toute modification du contenu de l'archive après sa signature conduit à l'échec de la vérification de la signature électronique.