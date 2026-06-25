Le tableau ci-dessous récapitule les acteurs pouvant être impliqués dans les différents processus collaboratif

| Acteur | Description |
|---|---|
| **Fournisseur Sortant** | Éditeur du LGC dont le contrat prend fin ou depuis lequel l'utilisateur souhaite exporter ses données. C'est lui qui est redevable de l'obligation de portabilité gratuite du Périmètre Pivot sous 30 jours calendaires. |
| **Fournisseur Destinataire** | Editeur recevant les données en vue de leur intégration. Il est tenu d'une obligation de moyens pour l'import dès lors que le format est conforme au référentiel. |
| **Professionnel de Santé initiateur** | Médecin ou professionnel de santé libéral, demandeur de l'export et responsable du contenu médical transféré. |
| **Professionnel de Santé Destinataire** | Médecin ou professionnel de santé libéral recevant l'export via son LGC. |
| **Patient** | Bénéficiaire de ses droits de portabilité individuelle (RGPD Art. 20, Art. L.1111-7 CSP). Peut demander directement l'export de ses données. |

{% sql {
  "query" : "
    SELECT
      Title,
      Purpose,
      Description,
      Web
    FROM Resources
    WHERE Type = 'ActorDefinition'
    ORDER BY Title
  ",
  "class" : "lines",
  "columns" : [
    {
      "title" : "Acteur", "type" : "link", "source" : "Title", "target" : "Web" },
    {
      "title" : "Type d'acteur", "type" : "markdown", "source" : "Purpose" },
    {
      "title" : "Description", "type" : "markdown", "source" : "Description" }
    
  ]
} %}