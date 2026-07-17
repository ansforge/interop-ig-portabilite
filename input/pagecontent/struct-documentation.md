Le répertoire `DOCUMENTATION/`, positionné à la racine de l'archive de portabilité, regroupe l'ensemble des éléments permettant au fournisseur destinataire d'interpréter et d'intégrer les données reçues de manière autonome, sans échange préalable avec le fournisseur sortant.

Cette documentation peut notamment comprendre les fichiers décrits ci-après.

#### Dictionnaire de données

Le dictionnaire de données décrit les données exportées dans un format propriétaire structuré, pour lesquelles il n'existe pas de spécification publique de référence permettant au fournisseur destinataire d'en déduire la structure et la sémantique. Les données exportées conformément à un volet du CI-SIS ou à un standard publié (CDA R2, FHIR, LOINC…) n'ont pas à faire l'objet d'un dictionnaire de données : le mapping de fichiers renvoie dans ce cas directement aux spécifications applicables.

Pour chaque donnée relevant de son périmètre, le dictionnaire couvre a minima :
- son intitulé et sa définition métier ;
- sa cardinalité ;
- son type ;
- la terminologie associée s'il s'agit d'un élément codé (terminologies de référence ou dictionnaire de terminologies propriétaires);
- les conventions retenues pour distinguer les données renseignées, les données négatives et les données non renseignées, lorsque la distinction s'applique ;
- si la donnée relève ou non du périmètre pivot ;
- la profondeur historique.

Le format du dictionnaire de données est libre. Il doit néanmoins être lisible sans logiciel propriétaire et accompagné d'une description de sa propre structure si celle-ci n'est pas autodescriptive.

#### Mapping de fichiers

Le mapping de fichiers est centré sur les fichiers présents dans l'archive. Pour chaque fichier ou type de fichier produit dans l'archive, il précise :
- le nom ou le schéma de nommage du fichier ;
- le format technique (CDA R2 N1 ou N3, JSON, CSV, ICS…) ;
- l'encodage du fichier ;
- les données couvertes, par référence aux entrées correspondantes du dictionnaire de données s'il s'agit d'un format propriétaire ou à la version du volet CI-SIS s'il s'agit d'un format standardisé ;

Pour les fichiers exportés dans un format propriétaire, le mapping précise en outre les règles d'interprétation nécessaires à leur exploitation.

#### Schéma de structure

Pour les données exportées dans un format propriétaire structuré, le fournisseur sortant peut fournir les schémas décrivant la structure des fichiers concernés (XSD, JSON Schema ou équivalent). Ces schémas constituent, au même titre que le dictionnaire de données, une ressource d'implémentation pour le fournisseur destinataire : ils lui permettent de comprendre l'organisation des données reçues et d'adapter son traitement en conséquence. 
Comme pour le dictionnaire de données, les fichiers conformes à un volet CI-SIS ou à un standard publié n'appellent pas de schéma complémentaire : le mapping de fichiers renvoie dans ce cas aux spécifications applicables.

#### Jeu d'échantillons

Le fournisseur sortant peut fournir, pour chaque type de document ou de fichier structuré présent dans l'archive, un exemple anonymisé illustrant la structure et le contenu attendus. Ce jeu d'échantillons facilite l'intégration par le fournisseur destinataire.

#### Paramètres de configuration

Lorsque certains paramètres de configuration de l'éditeur conditionnent l'interprétation, l'affichage, le traitement ou la production des données exportées, le fournisseur sortant peut fournir une description de ces paramètres.

Cette description permet au fournisseur destinataire d'identifier les comportements applicatifs susceptibles d'avoir un impact sur l'exploitation des données et, le cas échéant, de reconfigurer son propre système afin de garantir une reprise fonctionnelle cohérente.

Le format de cette description est libre. Elle doit être lisible sans logiciel propriétaire et permettre d'identifier sans ambiguïté les paramètres ayant une incidence sur la compréhension ou le traitement des données.