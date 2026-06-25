**Portabilité des données LGC** : La portabilité des données des logiciels de gestion de cabinet désigne l'obligation faite aux éditeurs de permettre l'export et le transfert des données de santé traitées dans leur logiciel, sans entrave technique, contractuelle ou tarifaire sur le périmètre pivot. 

**Périmètre pivot** : Le périmètre pivot désigne l'ensemble minimal, obligatoire et standardisé de données de santé (administratives et médicales) dont le transfert doit être garanti sans frais et dans un délai défini. Il constitue le socle d'obligations de résultat du **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC**. 
Les données situées hors périmètre pivot (données comptables et de facturation détaillée, traces système, paramètres de configuration, logs bruts d'activité, données analytiques hors prise en charge primaire,...) peuvent faire l'objet d'un export, mais ne sont pas soumises à l'obligation de gratuité.

**Documentation d’export** : Guide technique obligatoire décrivant la structure de l'archive, le ou les dictionnaire(s) de données (formats techniques des fichiers et données, mapping des données propriétaires avec les données standardisées du CI-SIS, profondeur historique), les schémas techniques de validation et les jeux d’échantillons.

**Export** : action par laquelle l’éditeur sortant fournit les données au professionnel ou à un fournisseur destinataire sous forme structurée et documentée.

**Export en autonomie**: Capacité pour le professionnel de déclencher l'export lui-même sans dépendre d'un acte manuel de l'éditeur sortant.

**Import**: action par laquelle l’éditeur destinataire intègre les données exportées.

**Transfert** : ensemble des opérations d’export et, si applicable, d’import visant à restituer la portabilité.

**Format opposable** : format imposé pour certaines données du périmètre pivot à la date d’entrée en vigueur 

**Donnée Structurée** : Donnée organisée selon un format permettant un traitement automatisé sans perte de sens (ex: XML, JSON, CDA).

**Données négatives et données non renseignées** : Une **donnée négative** est une donnée saisie explicitement pour attester de l'absence d'un élément clinique (ex. : absence confirmée d'allergie). Elle se distingue d'une **donnée non renseignée**, qui traduit l'absence de saisie dans le logiciel, sans qu'aucune conclusion clinique ne puisse en être tirée. Cette distinction doit être préservée dans l'export et explicitée dans la documentation d'export.

**Données transverses** : données produites ou gérées par le LGC qui ne sont pas rattachées à un dossier patient déterminé, mais qui sont associées à l'activité du professionnel de santé, du cabinet ou de la structure de soins. Elles contribuent au fonctionnement et à l'organisation de l'activité sans constituer des données médicales propres à un patient. Les données transverses comprennent notamment les données d'agenda et de planification (rendez-vous, plages d'ouverture, indisponibilités), les traces et journaux techniques (logs d'accès, de modification ou d'administration) ainsi que certaines données organisationnelles ou de paramétrage liées à l'exercice du professionnel ou de la structure.
Les données transverses peuvent être incluses ou exclues du périmètre d'export selon le contexte d'usage, conformément aux règles définies par le présent guide.
