Les concepts métiers portés par ce flux sont les suivants : 


<figure style="text-align:center;width:80%;">
    {% include sf-concepts-portabilite.svg %}
    <figcaption>Diagramme des concepts contenus dans le flux "Export d'archive Portabilité" </figcaption>
</figure>

<br>

Le tableau ci-dessous définit les différents objets de l'archive de portabilité: 

#### Archive de portabilité

L'archive de portabilité est un conteneur structuré regroupant l'ensemble des documents et données exportés, ainsi que les éléments de métadonnées, d'index et de documentation nécessaires à leur exploitation par le destinataire.

| Nom | Description |
| --- | --- |
| MANIFEST.XML [1..1] | Vue synthétique du contenu de l'archive de portabilité, rapport de volumétrie et d'intégrité. |
| SIGN.XML [1..1] | Signature attestant de l'authenticité et de l'imputabilité des données de l'archive de portabilité. |
| README.TXT [1..1] | Informations éditoriales et instructions d'utilisation relatives à l'archive de Portabilité. |
| Archive XDM Patient (données médicales et administratives du patient) [1..*] | Archive contenant l'ensemble des données de santé d'un patient dans un format structuré standardisé ou propriétaire. |
| Archive de données transverses [0..1] | Archive contenant l'ensemble des données transverses associées au praticien ou au cabinet (agenda, logs, comptabilité,...). |
| Documentation d'export [1..1] | Ensemble des éléments accompagnant l'archive et permettant son interprétation par le système destinataire : dictionnaire de données, dictionnaire de terminologies propriétaires, schéma technique de validation, jeu d'échantillons,... |

<br>

#### Archive de données transverses

Répertoire contenant l'ensemble des données transverses associées au praticien ou au cabinet (agenda, logs, comptabilité,...).

| Nom | Description |
| --- | --- |
| README.TXT [1..1] | Informations éditoriales et instructions d'utilisation relatives à l'archive de données transverses |
| Document périmètre pivot [1..*] | Ensemble minimal, obligatoire et structuré de données administratives et médicales (confère [Périmètre pivot](sf-perimetre-pivot.html)). |
| Document hors périmètre pivot [0..*] | Données dont l'export est facultatif. Leur export doit toutefois être structuré et documenté, au même titre que pour les documents du périmètre pivot. |

<br>

#### Archive XDM de données Patient

Archive contenant l'ensemble des données de santé d'un patient dans un format structuré standardisé ou propriétaire.

| Nom | Description |
| --- | --- |
| README.TXT [1..1] | Informations éditoriales et instructions d'utilisation relatives à l'archive Patient. |
| INDEX.HTM [1..*] | Page d'index renfermant les informations éditoriales, conformément au volet **Echanges de Documents de Santé**. |
| PDF [1..*] | Document de consultat au format PDF. Ces documents n'ont pas vocation à être intégrés par le destinataire si le destinataire est un système. |
| Lot de soumission [1..1] | Regroupement fonctionnel des documents qu'un émetteur transmet ensemble, à un instant donné, dans le cadre d'un même motif de transmission. Pour ce volet, seul 1 lot de soumission par archive est autorisé par archive. |

<br>

#### Lot de soumission

 Regroupement fonctionnel des documents qu'un émetteur transmet ensemble, à un instant donné, dans le cadre d'un même motif de transmission.

| Nom | Description |
| --- | --- |
| METADATA.XML [1..*] | Fichier de métadonnées du lot de soumission, conforme au profil IHE XDM, décrivant les documents patient qu'il accompagne. |
| Document périmètre pivot [1..*] | Ensemble minimal, obligatoire et structuré de données administratives et médicales (confère [Périmètre pivot](sf-perimetre-pivot.html)). |
| Document hors périmètre pivot [0..*] | Données dont l'export est facultatif. Leur export doit toutefois être structuré et documenté, au même titre que pour les documents du périmètre pivot. 