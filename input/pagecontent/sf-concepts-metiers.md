Les concepts métiers portés par ce flux sont les suivants : 


<figure style="text-align:center;width:100%;">
    {% include sf-concepts-portabilite.svg %}
    <figcaption>Diagramme des concepts contenus dans le flux "Export d'archive Portabilité" </figcaption>
</figure>

<br>

Le tableau ci-dessous définit les différents objets : 

| Nom | Description |
| --- | --- |
| Archive de portabilité | Conteneur structuré regroupant l'ensemble des documents et données exportés, ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire. |
| Archive XDM Patient (données médicales et administratives du patient) | Répertoire contenant l'ensemble des données de santé d'un patient dans un format structuré standardisé ou propriétaire. |
| Archive de données transverses | Répertoire contenant l'ensemble des données transverses associées au praticien ou au cabinet (agenda, logs, comptabilité,...). |
| Documentation d'export | Ensemble des éléments accompagnant l'archive et permettant son interprétation par le système destinataire : dictionnaire de données, dictionnaire de terminologies propriétaires, schéma technique de validation, jeu d'échantillons,... |
| Document périmètre pivot | Ensemble minimal, obligatoire et structuré de données administratives et médicales (confère [Périmètre pivot](sf-perimetre-pivot.html)). |
| Document hors périmètre pivot | Données dont l'export est facultatif. Leur export doit toutefois être structuré et documenté, au même titre que pour les documents du périmètre pivot. |
| PDF | Format de consultation pour les données Patient. Ces documents n'ont pas vocation à être intégrés par le destinataire si le destinataire est un système. |
| Fichiers de gestion du media (MANIFEST.XML, README.TXT, METADATA.XML, INDEX.HTM, SIGN.XML) | Fichiers attestant de l'intégrité et l'imputabilité de des données de l'archive de Portabilité. Ces fichiers permettent également au fournisseur destinataire de comprendre et d'intégrer les données de l'archive. |