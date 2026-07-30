# Sécurité - Portabilité des Données LGC v0.1.0

## Sécurité

 
There is no translation page available for the current page, so it has been rendered in the default language 

Ce chapitre présente les dispositions de sécurité locales au volet qui peuvent permettre de couvrir les exigences de sécurité d’un SIS mettant en œuvre ce volet.

Les dispositions présentées dans cette section correspondent à la dimension interopérabilité de dispositions de sécurité plus globales visant à couvrir les exigences de sécurité d’un système cible. En fonction de sa politique de sécurité, un système cible peut choisir ou pas de les mettre en œuvre. Les référentiels de sécurité édités par l’ANS fournissent des recommandations sur ce sujet.

Les systèmes doivent également se conformer aux exigences en matière de sécurité détaillées dans le **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC**.

### Confidentialité

Les données véhiculées dans le cadre de ce volet sont des données à caractère personnel contenant notamment des données médicales sensibles qu'il convient de protéger.

### Imputabilité

L'imputabilité du dépôt des documents est obtenue par une signature électronique de type XAdES utilisant un certificat de signature émis par une IGC autorisée par les référentiels d’authentification de la PGSSI-S. Cette signature est contenue dans le document SIGN.XML à la racine de l'archive de portabilité.

La signature porte sur la liste des archives Patient et Transverse incluses dans l'archive de portabilité. Les éléments signés sont l'ensemble des hash des archives, référencés par leur identifiant, associé à l'identifiant du MANIFEST.XML de l'archive de Portabilité.

Lors de la transaction "Export d'Archive de Portabilité" le système cible vérifie la signature et valide que le certificat utilisé pour la signature est un certificat émis par une IGC autorisée par les référentiels d’authentification de la PGSSI-S. Ce certificat doit correspondre à l'éditeur, tel que présenté dans la donnée "author" du manifest de l'archive de portabilité.

Le document comportant la signature du lot de soumission est un document XML auquel sont associées des métadonnées permettant son indexation.

### Intégrité

le contrôle d’intégrité peut être assuré par le même mécanisme que le mécanisme servant à l’imputabilité (signature électronique de type XAdES utilisant un certificat de signature émis par une IGC autorisée par les référentiels d’authentification de la PGSSI-S).

