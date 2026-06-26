<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>PDLGC Implementation Guide - Data portability for Practice Management Software</b><br>
This guide defines the functional and technical specifications for the portability of health data between practice management software vendors, in accordance with Article L.1470-5-1 of the French Public Health Code.
</p>

{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>Cet Implementation Guide n'est pas la version courante. Il s'agit de la version en intégration continue, soumise à de fréquents changements, uniquement destinée à suivre les travaux en cours. La version courante est accessible via l'URL canonique : http://interop.esante.gouv.fr/ig/fhir/pdlgc</p>
    </blockquote>
</div>
{% endif %}


{% if site.data.info.releaselabel == 'public-comment' %}
<div style="width: 65%">
<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 Cet Implementation Guide est actuellement en concertation. La version courante est accessible à l'adresse : http://interop.esante.gouv.fr/ig/fhir/pdlgc
</p>
</blockquote>
</div>
{% endif %}

<div class="figure">
    <img src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS" style="width:100%;">
</div>


### Introduction

La portabilité des données des logiciels de gestion de cabinet (LGC) permet de garantir qu'un changement d'éditeur de logiciel ne constitue plus un obstacle à l'exercice professionnel ni à la continuité des soins. Elle repose sur l'obligation de transfert des données de santé entre fournisseurs de services numériques, telle qu'introduite par l'article L.1470-5-1 du Code de la Santé Publique (loi n° 2026-403 du 26 mai 2026 de simplification de la vie économique).

Le présent guide d'implémentation traduit en spécifications fonctionnelles et techniques les exigences du **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC** élaboré par l'ANS et approuvé par arrêté du ministre chargé de la santé. 

### Structure du guide d'implémentation

<div style="background-color: #edf5ec ; border-left: 4px solid #4a9e5c; padding: 15px; margin: 20px 0;">
    <strong>Contexte métier</strong>
    <ul style="margin: 10px 0 0 0;">
    Le contexte métier, défini sur la présente page, présente les <a href="#contexte-metier-cas-usage">cas d'usage</a>, les <a href="#contexte-metier-definitions">définitions</a>, le <a href="#contexte-metier-cadre-juridique">cadre juridique</a> ainsi que l'<a href="#contexte-metier-orga-processus">organisation des processus collaboratifs</a> et les <a href="#contexte-metier-acteurs">acteurs impliqués</a>.
    </ul>
</div>

<div style="background-color: #e8f4f8; border-left: 4px solid #0077be; padding: 15px; margin: 20px 0;">
    <strong>Spécifications</strong>
    <ul style="margin: 10px 0 0 0;">
    La section <a href="#specifications">Spécifications</a> présente les spécifications fonctionnelles et techniques associcées à chaque processus collaboratif <br>
    Les <strong>spécifications fonctionnelles</strong> présentent notamment une définition du processus collaboratif et les concepts métiers utilisés.<br>
    Les <strong>spécifications techniques</strong> décrivent quant à elles la structure de l'archive de portabilité, les formats des documents et les métadonnées nécessaires aux échanges entre systèmes d'information.
    </ul>
</div>

<div style="background-color: #f0edf5 ; border-left: 4px solid #7b52a8; padding: 15px; margin: 20px 0;">
    <strong>Ressources de conformité</strong>
    <ul style="margin: 10px 0 0 0;">
    La section <a href="#artifacts">Ressources de conformité</a> liste les différents artefacts supportant les spécifications fonctionnelles et techniques
    </ul>
</div>

<div style="background-color: #fdf0e6; border-left: 4px solid #e07b39; padding: 15px; margin: 20px 0;">
    <strong>Annexes</strong>
    <ul style="margin: 10px 0 0 0;">
    Cette <a href="#annexes">section</a> renvoie aux annexes relatives à la sécurité, aux téléchargements, et à toute autre documentation utile au présent volet
    </ul>
</div>

### Scénarios et cas d'usage

{% include contexte-metier-cas-usage.md %}

<br>

### Cadre juridique

{% include contexte-metier-cadre-juridique.md %}

<br>

### Définitions

{% include contexte-metier-definitions.md %}

<br>

### Organisation des processus collaboratifs

Le domaine "Export de données de santé" comprend les différents volets permettant un échange de données de santé s'appuyant sur le profil IHE_XDM


{% include paquetage.svg %}


<br>

### Organisation des processus collaboratifs - Test

Le domaine "Export de données de santé" comprend les différents volets permettant un échange de données de santé s'appuyant sur le profil IHE_XDM


{% include DiagrammePaquetage.svg %}


<br>

### Acteurs

{% include contexte-metier-acteurs.md %}

<br>

### Dépendances

{% lang-fragment dependency-table.xhtml %}

### Propriété intellectuelle

{% lang-fragment ip-statements.xhtml %}
