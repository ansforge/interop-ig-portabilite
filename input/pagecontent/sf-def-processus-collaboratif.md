Le processus collaboratif « Export d'archive de portabilité » couvre l'ensemble des situations dans lesquelles un professionnel de santé ou un patient exerce son droit à la portabilité des données auprès d'un éditeur de logiciel LGC.

Quel que soit le cas d'usage, le processus repose sur un unique flux de production et de mise à disposition d'une archive de portabilité, dont la structure s'appuie sur le profil IHE XDM. Le type d'export (unitaire, ciblé ou massif) ne modifie pas la nature de cette transaction ; il détermine uniquement le périmètre des données incluses dans l'archive produite et certaines contraintes additionnelles (délai de mise à disposition, format des données, intégration dans un logiciel ou consultation directe...).

##### Pré-conditions
Le professionnel de santé, en tant que demandeur de l'export, doit au préalable :
- Être habilité à initier la demande, dans le respect des règles de gestion des droits propres au logiciel ;
- Être en mesure de préciser le périmètre de l'export souhaité (dossier patient identifié, ensemble de patients selon un critère de sélection, ou intégralité de la patientèle) ;
- Disposer, le cas échéant, des coordonnées de l'éditeur ou du système destinataire.

L'éditeur sortant, en tant que producteur de l'archive, doit au préalable :
- Disposer d'un mécanisme permettant de recevoir et d'horodater la demande ;
- Disposer des moyens techniques de génération de l'archive conformément à la structure de l'archive de Portabilité définie dans le présent guide ;
- Disposer d'un Contact Portabilité identifié et joignable.

##### Description des actions

<figure>
{% include activity-pdlg-export-archive-portabilite.svg %}
    <figcaption> 
        Diagramme d'activité du processus collaboratif "Export d'archive Portabilité"
    </figcaption>
</figure>

<br>

Le présent diagramme illustre le contexte fonctionnel de la transaction ExportArchivePortabilite. Seule la transaction de production et de mise à disposition de l'archive de portabilité est spécifiée par le présent guide d'implémentation.

Les modalités d'exploitation de l'archive (import dans un système ou consultation directe) sont présentées à titre de contexte et ne relèvent pas du périmètre de la spécification. 

| Action | Description |
| ----- | ----- |
| Initier la demande d'export | Le professionnel de santé adresse à l'éditeur sortant une demande d'export précisant le périmètre souhaité (unitaire, ciblé ou massif). Cette demande intervient soit de sa propre initiative soit à l'initiative du patient|
| Produire l'archive | L'éditeur sortant génère l'archive de portabilité conforme au profil IHE XDM, incluant les données du périmètre déterminé, la documentation d'export et le rapport d'intégrité associés. |
| Mettre à disposition l'archive | L'éditeur sortant met l'archive à disposition du demandeur ou de l'éditeur destinataire selon un mode sécurisé (lien chiffré, plateforme de transfert HDS ou support physique à défaut). |
| Vérifier la complétude et l'intégrité | Le destinataire de l'archive contrôle, à l'aide du fichier INDEX et du rapport d'intégrité, que l'ensemble des données attendues a été correctement transmis. |
| Intégrer les données / ouvrir l'archive | Si le destinataire est un système, alors il exploite les données reçuesen les intégrant. Si le destinataire est une personne alors elle télécharge/ouvre l'archive.|
| Mettre à disposition / consulter les données | Si le destinataire est un système, il met à disposition les données à l'utilisateur de logiciel. Si le destinataire est une personne, elle consulte directement les données.

##### Contraintes

Les contraintes suivantes s'appliquent spécifiquement selon le type d'export, sans modifier la transaction décrite ci-dessus.

**Export unitaire**
- Porte sur le dossier d'un patient individuel, dans le cadre d'un transfert à un confrère, d'une demande du patient ou d'une réquisition judiciaire ;
- Tout document structuré doit être accompagné de son pendant PDF pour permettre une consultation humaine sans logiciel métier compatible ;
- La mise à disposition est immédiate, sans délai de 30 jours applicable ;
- L'export est gratuit et peut être renouvelé autant que nécessaire ;
- Les notes personnelles, l'agenda et les logs d'accès sont exclus du périmètre, sauf cas de réquisition judiciaire ;
- Une implémentation usuelle consiste à permettre la désélection de certains documents par le professionnel avant transmission.

**Export ciblé**
- Porte sur un sous-ensemble de la patientèle défini par un critère de sélection (professionnel de santé référent, période, type de données) ;
- Le format attendu est structuré, conformément au périmètre pivot et doit être accompagné d'un format PDF pour permettre une consultation humaine sans logiciel métier compatible;
- Un délai de mise à disposition de 30 jours ainsi qu'un mécanisme d'accusé de réception sous 48 heures s'appliquent, conformément au référentiel ;
- L'export est gratuit la première fois pour le périmètre concerné.

**Export massif**
- Porte sur l'intégralité de la patientèle, dans le cadre d'un changement d'éditeur ou d'un départ à la retraite ;
- Le format attendu combine documents PDF « simples » et données structurées ;
- Le délai de mise à disposition de 30 jours et le mécanisme d'accusé de réception sous 48 heures s'appliquent ;
- Pour les structures de grande taille, un plan de migration phasé peut être proposé sous 7 jours dès lors que la première livraison (données actives de moins de deux ans) respecte le délai initial de 30 jours ;
- L'éditeur sortant maintient l'accès à la fonctionnalité d'export pendant 90 jours à compter de la fin du contrat, période durant laquelle l'export du périmètre pivot demeure gratuit ;
- L'export inclut les notes personnelles, l'agenda et les logs d'accès, sauf disposition contraire convenue avec le professionnel.
