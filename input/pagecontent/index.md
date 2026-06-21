<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Guide d'implémentation — Portabilité des données des Logiciels de Gestion de Cabinet (LGC)</b><br>
Ce guide définit les spécifications techniques d'implémentation pour la portabilité des données de santé entre éditeurs de logiciels de gestion de cabinet, en application de l'article L.1470-5-1 du Code de la Santé Publique.
</p>

{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>Cet Implementation Guide n'est pas la version courante. Il s'agit de la version en intégration continue, soumise à des changements fréquents, uniquement destinée à suivre les travaux en cours.</p>
    </blockquote>
</div>
{% endif %}

### Introduction

Ce guide d'implémentation définit les spécifications techniques nécessaires à la portabilité des données de santé des patients entre éditeurs de Logiciels de Gestion de Cabinet (LGC). Il s'inscrit dans le cadre du **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC** élaboré par l'ANS, en application de l'article L.1470-5-1 du Code de la Santé Publique (loi n° 2026-403 du 26 mai 2026 de simplification de la vie économique).

La portabilité repose sur la notion de **Périmètre Pivot** : un socle minimal, obligatoire et gratuit de données de santé (administratives et médicales) dont le transfert doit être garanti pour assurer la continuité des soins lors d'un changement d'éditeur.

Les principales sections de ce guide sont :

* Le **Volume 1 — Étude fonctionnelle** : scénarios d'usage, acteurs, périmètre des données
* Le **Volume 2 — Spécifications techniques** : structure de l'archive, formats, flux d'échange, métadonnées
* Le **Volume 3 — Annexes** : sécurité, téléchargements

### Périmètre du projet

Ce guide couvre trois cas d'usage principaux :

| Scénario | Déclencheur | Périmètre exporté |
|---|---|---|
| Export unitaire — Patient | Demande du patient (Art. L.1111-7 CSP, RGPD Art. 20) | Données médicales, administratives, documents, biologie |
| Export unitaire — Confrère | Transfert de patientèle, remplacement | Périmètre patient + notes de consultation + agenda |
| Export en masse — Migration / Retraite | Changement d'éditeur, cessation d'activité | Périmètre complet : toutes données + traces + notes personnelles |

### Acteurs

| Acteur | Rôle |
|---|---|
| **Fournisseur Sortant** | Éditeur LGC dont le contrat prend fin. Responsable de l'export gratuit du Périmètre Pivot sous 30 jours. |
| **Fournisseur Destinataire** | Éditeur LGC recevant les données. Tenu d'une obligation de moyens pour l'import si le format est conforme. |
| **Professionnel de Santé** | Demandeur de l'export, responsable du contenu médical transféré. |
| **Patient** | Bénéficiaire de ses droits de portabilité individuelle (RGPD Art. 20, Art. L.1111-7 CSP). |

### Dépendances

{% lang-fragment dependency-table.xhtml %}

### Auteurs et contributeurs

| Role | Nom | Organisation | Contact |
| --- | --- | --- | --- |
| **Primary Editor** | Groupe de Travail Portabilité | Agence du Numérique en Santé | interop@esante.gouv.fr |

### Propriété intellectuelle

{% lang-fragment ip-statements.xhtml %}
