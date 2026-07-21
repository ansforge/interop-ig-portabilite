Les concepts métiers portés par ce flux sont les suivants : 


<figure style="text-align:center;width:80%;">
    {% include sf-concepts-portabilite.svg %}
    <figcaption>Diagramme des concepts contenus dans le flux "Export d'archive Portabilité" </figcaption>
</figure>

<br>

Le tableau ci-dessous définit les différents objets de l'archive de portabilité: 

**Archives et répertoires**

| Nom | Description |
| --- | --- |
| Archive de portabilité [1..1] | Conteneur structuré regroupant l'ensemble des documents et données exportés, ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire. |
| Archive XDM Patient (données médicales et administratives du patient) [1..1] | Répertoire contenant l'ensemble des données de santé d'un patient dans un format structuré standardisé ou propriétaire. |
| Archive de données transverses [0..1] | Répertoire contenant l'ensemble des données transverses associées au praticien ou au cabinet (agenda, logs, comptabilité,...). |
| Documentation d'export [1..1] | Ensemble des éléments accompagnant l'archive et permettant son interprétation par le système destinataire : dictionnaire de données, dictionnaire de terminologies propriétaires, schéma technique de validation, jeu d'échantillons,... |

<br>

**Fichiers de gestion**

| Nom | Description |
| --- | --- |
| MANIFEST.XML [1..1] | Vue synthétique du contenu de l'archive de portabilité et rapport d'intégrité. |
| SIGN.XML [1..1] | Signature attestant de l'authenticité et de l'imputabilité des données de l'archive de portabilité. |
| README.TXT [2..*] | Informations éditoriales et instructions d'utilisation relatives à l'archive dans laquelle il se trouve (portabilité, transverse ou patient). Un README est décliné pour chacune de ces trois archives, à partir d'un socle commun. |
| METADATA.XML [1..*] | Fichier de métadonnées du lot de soumission, conforme au profil IHE XDM, décrivant les documents patient qu'il accompagne. |
| INDEX.HTM [1..*] | Page d'index renfermant les informations éditoriales, conformément au volet **Echanges de Documents de Santé**. |

<br>

**Documents médicaux et administratifs**

| Nom | Description |
| --- | --- |
| Document périmètre pivot [1..*] | Ensemble minimal, obligatoire et structuré de données administratives et médicales (confère [Périmètre pivot](sf-perimetre-pivot.html)). |
| Document hors périmètre pivot [0..*] | Données dont l'export est facultatif. Leur export doit toutefois être structuré et documenté, au même titre que pour les documents du périmètre pivot. |
| PDF [1..*] | Format de consultation pour les données Patient. Ces documents n'ont pas vocation à être intégrés par le destinataire si le destinataire est un système. |