Le présent volet s'inscrit dans la continuité des travaux du volet Echanges de Documents de Santé (EDS), s'appuyant sur la transaction ITI-32 et la structure d'archive XDM définie par IHE. Il étend toutefois les usages sur deux points essentiels pour répondre aux contraintes de la portabilité des données LGC.

**Une archive chapeau de Portabilite**

Contrairement au volet Echange de Documents de Santé, qui traite le dossier d'un patient unique dans un fichier ZIP unique, la portabilité LGC nécessite de transporter en une seule opération le dossier de plusieurs patients. Le présent volet définit à cet effet une archive chapeau de Portabilité, hors profil XDM, qui encapsule une collection d'archives :
- une archive XDM par patient exporté, conforme au profil IHE XDM et intégrable isolément par le système destinataire sans dépendance aux autres archives de la collection ;
- une archive de données transverses, regroupant les données ne relevant pas d'un dossier patient individuel (agenda, traces d'activité, données de gestion,...).

L'archive chapeau porte à sa racine un `MANIFEST.XML`, distinct des `METADATA.XML` présents dans chaque archive XDM patient. Le `MANIFEST.XML` décrit la collection dans son ensemble (nombre de dossiers, volumétrie, intégrité globale) et constitue le point d'entrée pour le traitement automatisé de l'archive par le système destinataire.

**Un mode de transport non contraint**

Contrairement au volet EDS, le présent volet ne restreint pas le mode de transport de l'archive chapeau. Plusieurs modalités sont admises, à la discrétion des acteurs et dans le respect des exigences de sécurité du référentiel (chiffrement, traçabilité, hébergement HDS) :
- mise à disposition via une interface de téléchargement sécurisée ;
- transfert via une plateforme d'échange HDS ;
- messagerie sécurisée de santé (MSS);
- support physique chiffré, à titre exceptionnel et dérogatoire.

Le choix du mode de transport ne modifie pas la structure de l'archive chapeau de Portabilité, ni le contenu des archives XDM patient. Les spécifications définies dans ce volet s'appliquent indépendamment du canal retenu.