Les concepts métiers portés par ce flux sont les suivants : 

<figure style="text-align:center;">
    {% include sf-concepts-portabilite.svg %}
    <figcaption>Diagramme des concepts contenus dans le flux 1 </figcaption>
</figure>

<br>

|Nom|Description|
|---|---|
|**Archive de portabilité** [1..1]|Conteneur structuré,regroupant l'ensemble des documents et données exportés ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire.
|**Archive XDM Patient (données médicales)** [1..1]| Répertoire contenant l'ensemble des données de santé d'un patient dans un format structuré ou propriétaire|
|**Archive de données transverses** [1..1]| Répertoire contenant l'ensemble des données transverses associées au praticien ou au cabinet (agenda, logs, comptabilité,...)|
|**Documentation d'export** [1..1]|Ensemble des éléments accompagnant l'archive et permettant son interprétation par le système destinataire : dictionnaire de données, schéma technique de validation, jeu d'échantillons, rapport d'intégrité et de volumétrie.
|**Périmètre pivot** [1..1]|Ensemble minimal, obligatoire et standardisé de données de santé (administratives et médicales) dont le transfert doit être garanti sans frais et dans un délai défini (confère [Périmètre pivot](sf-perimetre-pivot.html)).
|**Hors périmètre pivot** [0..*]|L’export des données hors périmètre pivot est facultatif. Néanmoins, lorsqu’elles sont exportées, ces données doivent être fournies dans un format standardisé lorsqu’il est nativement disponible. À défaut, elles sont exportées dans leur format d’origine.|
