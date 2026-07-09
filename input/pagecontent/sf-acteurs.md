Le tableau ci-dessous récapitule les acteurs impliqués dans l'export d'une archive de portabilité :

{% sql {
  "query" : "
    SELECT
      Title,
      Purpose,
      Description,
      Web
    FROM Resources
    WHERE Type = 'ActorDefinition'
    ORDER BY Purpose
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