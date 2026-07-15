Les concepts métiers portés par ce flux sont les suivants : 


<figure style="text-align:center;">
    {% include sf-concepts-portabilite.svg %}
    <figcaption>Diagramme des concepts contenus dans le flux "Export d'archive Portabilité" </figcaption>
</figure>

<br>

Le tableau ci-dessous définit les différents objets : 

| Nom | Description |
| --- | --- |
| Archive de portabilité | Conteneur structuré,regroupant l'ensemble des documents et données exportés ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire. |
| Archive XDM Patient (données médicales) | Répertoire contenant l'ensemble des données de santé d'un patient dans un format structuré ou propriétaire. |
| Archive de données transverses | Répertoire contenant l'ensemble des données transverses associées au praticien ou au cabinet (agenda, logs, comptabilité,...). |
| Documentation d'export | Ensemble des éléments accompagnant l'archive et permettant son interprétation par le système destinataire : dictionnaire de données, dictionnaire de terminologies propriétaires, schéma technique de validation, jeu d'échantillons,... |
| Document périmètre pivot | Ensemble minimal, obligatoire et standardisé de données de santé (administratives et médicales) dont le transfert doit être garanti sans frais et dans un délai défini (confère [Périmètre pivot](sf-perimetre-pivot.html)). |
| Document hors périmètre pivot | L’export des données hors périmètre pivot est facultatif. Néanmoins, lorsqu’elles sont exportées, ces données doivent être fournies dans un format standardisé lorsqu’il est nativement disponible. À défaut, elles sont exportées dans leur format d’origine. |
| PDF | Format de consultation pour les données Patient. Ces documents n'ont pas vocation à être intégrés par le destinataire si le destinataire est un système. |
| Fichiers de gestion du media (MANIFEST.XML, README.TXT, METADATA.XML, INDEX.HTM, SIGN.XML) | Fichiers attestant de l'intégrité et l'imputabilité de des données de l'archive de Portabilité. Ces fichiers permettent également au fournisseur destinataire de comprendre et d'intégrer les données de l'archive. |