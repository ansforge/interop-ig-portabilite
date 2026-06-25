Le tableau ci-dessous récapitule les acteurs pouvant être impliqués dans les différents processus collaboratif

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