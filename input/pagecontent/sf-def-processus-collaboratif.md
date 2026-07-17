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

Le diagramme ci-dessous illustre le contexte fonctionnel de la transaction ExportArchivePortabilite. 
<br>

<figure style="text-align:center;">
{% include activity-pdlg-export-archive-portabilite.svg %}
    <figcaption> 
        Diagramme d'activité du processus collaboratif "Export d'archive Portabilité"
    </figcaption>
</figure>

<br>

Il est important de noter que les modalités d'exploitation de l'archive (import dans un système ou consultation directe) sont présentées à titre de contexte et ne relèvent pas du périmètre de la spécification. Seule la transaction de production et de mise à disposition de l'archive de portabilité est spécifiée par le présent guide d'implémentation.

<br>

| Action | Description |
| ----- | ----- |
| Initier la demande d'export | Le professionnel de santé adresse à l'éditeur sortant une demande d'export précisant le périmètre souhaité (unitaire, ciblé ou massif). Cette demande intervient soit de sa propre initiative soit à l'initiative du patient. |
| Produire l'archive | L'éditeur sortant génère l'archive de portabilité conforme au profil IHE XDM, incluant les données du périmètre déterminé, la documentation d'export et le rapport d'intégrité associés. |
| Mettre à disposition l'archive | L'éditeur sortant met l'archive à disposition du demandeur ou de l'éditeur destinataire selon un mode sécurisé (lien chiffré, plateforme de transfert HDS ou support physique à défaut). |
| Vérifier la complétude et l'intégrité | Le destinataire de l'archive contrôle, à l'aide du fichier INDEX et du rapport d'intégrité, que l'ensemble des données attendues a été correctement transmis. |
| Intégrer les données / ouvrir l'archive | Si le destinataire est un système, alors il exploite les données reçues en les intégrant. Si le destinataire est une personne alors elle télécharge/ouvre l'archive. |
| Mettre à disposition / consulter les données | Si le destinataire est un système, il met à disposition les données à l'utilisateur de logiciel. Si le destinataire est une personne, elle consulte directement les données. |

<br>

##### Contraintes

Les modalités détaillées encadrant les opérations d'export (périmètre des données obligatoires, délais de mise à disposition, conditions de gratuité, gestion des cas particuliers,...) sont définies dans le **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC**, opposable par arrêté du ministre chargé de la santé.

Le présent guide d'implémentation ne reprend pas ces contraintes et renvoie au référentiel pour toute question relative aux obligations de résultat pesant sur le fournisseur sortant et le fournisseur destinataire. Les spécifications du présent guide portent exclusivement sur les aspects techniques d'interopérabilité : structure de l'archive de portabilité, formats d'interchange, métadonnées et mécanismes d'intégrité.